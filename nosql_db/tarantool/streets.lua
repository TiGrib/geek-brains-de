local log = require('log')
local fio = require('fio')
local uuid = require('uuid')
local json = require('json')

--[[
    Отдаём фронтенд часть браузеру
]]
local function streets(request)
    return { headers= {['content-type'] = 'text/html'}, body=fio.open('templates/index.html'):read() }
end

--[[
    Создаём новый отзыв и сохраняем в таблицу
]]
local function newplace(request)
    local place = {}
    -- json от фронтенда
    local obj = request:json()
    --[[ Генерируем уникальный идентификатор для отзыва]]
    place['_id'] = uuid.str()
    obj['_id'] = place['_id']
    --[[ Делаем структуру объекта плоской ]]
    place['type'] = obj['type']
    place['geometry.type'] = obj['geometry']['type']
    place['geometry.coordinates'] = obj['geometry']['coordinates']
    place['properties.comment'] = obj['properties']['comment']
    place['properties.rate'] = obj['properties']['rate']

    --[[
        Создаём сущность для таблицы
    ]]
    local t, err = box.space.streets:frommap(place)
    if err ~= nil then
        log.error(tostring(err))
        return {code=503, body=tostring(err)}
    end
    --[[
        Вставляет объект
    ]]
    box.space.streets:insert(t)

    return { body=json.encode(obj) }
end

--[[
    Утилита для вычисления расстояния
    Потребуется чуть ниже
]]
local function distance(x, y, x2, y2)
    return math.sqrt(math.pow(x2-x, 2) + math.pow(y2-y, 2))
end

--[[
    Функция возвращает объекты на карте
    ближайшие к указанной точке
]]
local function places(request)
    local result = {}

    local limit = 1000
    local x = tonumber(request:param('x'))
    local y = tonumber(request:param('y'))
    local dist = tonumber(request:param('distance'))
    local rate = tonumber(request:param('rate'))

    x = x or 1
    y = y or 1
    dist = dist or 0.2

    --[[
        Итерируемся по таблице начиная с ближайщих к указанной точке объектов
    ]]
    for _, place in box.space.streets.index.spatial:pairs({x, y}, {iterator='NEIGHBOR'}) do

        for _, place_with_rate in box.space.streets.index['rate']:pairs({rate}, {iterator='GE'}) do
        -- Если объект уже очень далеко, прерываем итерацию
            if distance(x, y, place_with_rate['geometry.coordinates'][1], place_with_rate['geometry.coordinates'][2]) > dist then
                break
            end

        -- Создаём GeoJSON
            local obj = {
                ['_id'] = place_with_rate['_id'],
                type = place_with_rate['type'],
                geometry = {
                    type = place_with_rate['geometry.type'],
                    coordinates = place_with_rate['geometry.coordinates'],
                },
                properties = {
                    comment = place_with_rate['properties.comment'],
                    rate = place_with_rate['properties.rate'],
                },
            }
            table.insert(result, obj)
            limit = limit - 1
            if limit == 0 then
                break
            end
        end
    end
    return {code=200,
            body=json.encode(result)}
end

--[[
    Инициализации
]]

box.cfg{}
box.schema.user.grant('guest', 'super', nil, nil, {if_not_exists=true})

--[[
    Создаём таблицу для хранения отзывов на карте
]]
box.schema.space.create('streets', {if_not_exists=true})
box.space.streets:format({
        {name="_id", type="string"},
        {name="type", type="string"},
        {name="geometry.type", type="string"},
        {name="geometry.coordinates", type="array"},
        {name="properties.comment", type="string"},
        {name="properties.rate", type="unsigned"}
})
--[[ Создаём первичный индекс ]]
box.space.streets:create_index('primary', {
                                parts={{field="_id", type="string"}},
                                type = 'TREE',
                                if_not_exists=true,})
--[[ Создаём индекс для координат ]]
box.space.streets:create_index('spatial', {
                                parts = {{ field="geometry.coordinates", type='array'} },
                                type = 'RTREE', unique = false,
                                if_not_exists=true,})

box.space.streets:create_index('rate',{
    parts = {{field = "properties.rate", type = "unsigned"}},
    unique = false,
})

--[[ Настраиваем http сервис ]]
local httpd = require('http.server').new('0.0.0.0', 8081)
httpd:route({path="/"}, streets)
httpd:route({path="/newplace"}, newplace)
httpd:route({path="/places"}, places)

pcall(httpd.start, httpd)

require('console').start()
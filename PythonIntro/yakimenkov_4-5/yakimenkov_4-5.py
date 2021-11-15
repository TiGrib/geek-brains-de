import sys
import task_utils


if __name__ == "__main__":

    if len(sys.argv) > 1:
        print(task_utils.currency_rates(sys.argv[1]))
    else:
        print(task_utils.currency_rates("eur"))
import os

def add_three_numbers(one, two, three):
    return one + two + three

def read_an_environment_variable():
    return os.getenv('MY_ENV_VAR')
from todo_app.dummy.dummy_funcs import read_an_environment_variable

def test_environment():
    assert read_an_environment_variable() == 'MY_VALUE'
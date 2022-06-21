# Template for creating projects in Python with pytest and coverage

Depedencies:

* [pytest][1]: popular library for testing in Python.
* [coverage][2]: library that calculates the coverage in Python.

## Steps to configure the environment

First you need to create a virtual environment with [virtualenv][3].
If you do not have installed virtualenv, you can install it with pip globally:

```shell
python -m pip install --user virtualenv
```

In any case, check the [documentation][4].

Once the virtualenv option is active, you can create a virtualenv with the Python version of your preference. For example:

```shell
# Creates a Python virtual environment in Python 3.9
virtualenv venv --python 3.9
# Activates the virtual environment 
source venv/bin/activate 
# Now your environment is created
```

## Setup dependencies

Install all the dependencies in the `requiments.txt` file:

```shell
python -m pip install -r requirements.txt
```

Or, if you have [make][5] installed:

```shell
make install
```

## Testing and Coverage

To run the tests:

````shell
make test    
````

If ypu do not have Make:

````shell
python -m pytest -vv --capture=tee-sys
````

Output example:

````shell
pytest -vv --capture=tee-sys
============================================================================== test session starts ===============================================================================
platform darwin -- Python 3.9.12, pytest-7.1.2, pluggy-1.0.0 -- /Users/alberto.eyo/git/apecr/python-kata-skeleton/venv/bin/python
cachedir: .pytest_cache
rootdir: /Users/alberto.eyo/git/apecr/python-kata-skeleton
collected 1 item                                                                                                                                                                 

tests/test_init.py::test_project_version PASSED                                                                                                                            [100%]

=============================================================================== 1 passed in 0.01s ================================================================================
````

To run coverage report:

````shell
make coverage
````

[1]: https://docs.pytest.org/en/latest/contents.html

[2]: https://coverage.readthedocs.io/en/latest/

[3]: https://virtualenv.pypa.io/en/latest/

[4]: https://virtualenv.pypa.io/en/latest/installation.html

[5]: https://www.gnu.org/software/make/manual/make.html
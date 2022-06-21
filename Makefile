all: install test coverage

install:
	python -m pip install -r requirements.txt

test:
	pytest -vv --capture=tee-sys

coverage:
	coverage run --source . -m pytest tests \
  	&& coverage report --omit=tests/*.py,.venv/* \
  	&& coverage xml -o coverage-reports/coverage.xml --omit=tests/*.py \
  	&& coverage html -d coverage-reports --omit=tests/*.py
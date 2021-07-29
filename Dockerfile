FROM python:3 as base

ENV POETRY_HOME=/poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
ENV PATH=/poetry/bin:${PATH}

WORKDIR /code
COPY poetry.lock pyproject.toml /code/
# Could use no-dev here for prod
RUN poetry config virtualenvs.create false && poetry install --no-interaction --no-ansi

EXPOSE 5000

COPY . /code
ENTRYPOINT [ "poetry", "run", "pytest" ]
# Python Pytest GitHub Action
Github Action for Pytest with Python Slim Docker image (supports install of numpy and pandas and takes very less time to build)

Run any Pytest command using the action -

```bash
$ poetry run pytest test/unit
```

### Usage

```yml
- name: Python Pylin GitHub Action
  uses: wilig/python-poetry-pytest-github-action@v1
  with:
    args: poetry install && poetry run pytest
```

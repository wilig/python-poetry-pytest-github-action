FROM python:3.8.2-buster

LABEL "com.github.actions.name"="GitHub Action for Python Pytest Poetry based Projects"
LABEL "com.github.actions.description"="Run pytest commands on python slim image"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"


RUN pip install --upgrade poetry
RUN pip install pytest==5.2.2 pytest-cov==2.8.1 pytest-mock==1.11.2 pytest-randomly==3.4.1

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
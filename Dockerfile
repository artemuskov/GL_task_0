ARG PYTHON_VERSION=3.9-slim-buster
FROM python:${PYTHON_VERSION}

ENV PATH /root/.local/bin:/code:$PATH

COPY ./metrics /code/metrics
WORKDIR /code
RUN pip install psutil

CMD [ "sh", "metrics" ]

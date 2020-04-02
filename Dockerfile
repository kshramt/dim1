from python:3.8.2-buster

workdir /root

copy requirements.txt .

run \
      pip \
      install \
      --no-cache-dir \
      -r requirements.txt \
      && \
      rm -f requirements.txt \
      && \
      :

ENTRYPOINT ["python3"]

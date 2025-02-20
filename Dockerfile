FROM python:3.12.9-bookworm

WORKDIR /usr/src/app

RUN apt-get update \
  && apt-get install -y pipx \ 
  && pipx ensurepath \
  && pipx install poetry \
  && /root/.local/bin/poetry self add poetry-plugin-export

ENV PATH="${PATH}:/root/.local/bin"

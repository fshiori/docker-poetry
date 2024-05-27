FROM python:3.12.3-bookworm

WORKDIR /usr/src/app

RUN apt-get update \
  && apt-get install -y pipx \ 
  && pipx ensurepath \
  && pipx install poetry

ENV PATH="${PATH}:/root/.local/bin"
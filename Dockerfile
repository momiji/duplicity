FROM python:3

RUN apt update && apt install -y gettext librsync-dev && apt clean
RUN pip install --upgrade pip && pip install duplicity && rm /root/.cache/pip -rf

CMD ["duplicity"]

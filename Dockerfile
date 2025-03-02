FROM python:3

RUN apt update && apt install -y gettext librsync-dev && apt clean
RUN pip install --upgrade pip && pip install duplicity && rm /root/.cache/pip -rf
RUN wget "https://sourceforge.net/projects/ftplicity/files/duply%20%28simple%20duplicity%29/2.5.x/duply_2.5.5.tgz/download" -O duply.tgz \
    && tar -xf duply.tgz && mv duply_2.5.5/duply /usr/local/bin/duply && rm duply.tgz && rm duply_2.5.5 -rf

CMD ["duplicity"]

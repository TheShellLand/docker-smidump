FROM python:3

COPY entry.sh /
COPY env.sh /
COPY generate.sh /
COPY generate_maps.py /
COPY requirements.txt /
COPY automon /automon
COPY mibs /mibs

RUN set -xe \
    && apt update >/dev/null \
    && apt install -y smitools \
    && apt clean; apt autoclean -y; apt autoremove -y

RUN set -xe \
    && pip3 install -r requirements.txt

VOLUME /mibs

ENTRYPOINT ["/entry.sh"]

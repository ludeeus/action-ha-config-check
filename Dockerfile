FROM ludeeus/container:python

COPY runaction.sh /runaction.sh
RUN \
    apk add --no-cache \
        jq \
        bash\
    \
    && python3 -m pip install \
        wheel \
        setuptools

ENTRYPOINT ["bash", "/runaction.sh"]

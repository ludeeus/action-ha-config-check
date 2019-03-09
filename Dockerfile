FROM python:3.7

COPY runaction.sh /runaction.sh
RUN chmod +x /runaction.sh

ENTRYPOINT ["/runaction.sh"]

LABEL "name"="ha-config-check"
LABEL "maintainer"="Ludeeus <ludeeus@gmail.com>"
LABEL "version"="0.0.1"
LABEL "com.github.actions.name"="Home Assistant Configuration Check"
LABEL "com.github.actions.description"="Check your configuration for a against Home Assistant versions"
LABEL "com.github.actions.icon"="home"
LABEL "com.github.actions.color"="blue"

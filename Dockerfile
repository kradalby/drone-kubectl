FROM bitnami/kubectl:1.17

LABEL maintainer "Kristoffer Dalby <kradalby@kradalby.no>"

COPY init-kubectl kubectl /opt/kradalby/kubectl/bin/

USER root

ENV PATH="/opt/kradalby/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]

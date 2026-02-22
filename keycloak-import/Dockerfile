FROM quay.io/keycloak/keycloak:26.1
COPY master-realm.json /opt/keycloak/data/import/master-realm.json
COPY entrypoint.sh /opt/keycloak/entrypoint.sh
USER root
RUN chmod +x /opt/keycloak/entrypoint.sh && \
    chown -R keycloak:keycloak /opt/keycloak/data/import/
USER keycloak
ENTRYPOINT ["/opt/keycloak/entrypoint.sh"]
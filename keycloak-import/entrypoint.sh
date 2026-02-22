#!/bin/bash
set -e

# Replace placeholders in realm JSON with environment variables
for f in /opt/keycloak/data/import/*.json; do
  [ -f "$f" ] && sed -i \
    -e "s|\${GRAFANA_OIDC_SECRET}|${GRAFANA_OIDC_SECRET}|g" \
    -e "s|\${VIEWER_PASSWORD}|${VIEWER_PASSWORD}|g" \
    "$f"
done

exec /opt/keycloak/bin/kc.sh "$@"

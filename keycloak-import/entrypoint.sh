#!/bin/bash
set -e

# Replace placeholders in realm JSON with environment variables
for f in /opt/keycloak/data/import/*.json; do
  [ -f "$f" ] && sed -i "s|\${GRAFANA_OIDC_SECRET}|${GRAFANA_OIDC_SECRET}|g" "$f"
done

exec /opt/keycloak/bin/kc.sh "$@"
#!/usr/bin/with-contenv bashio
set +u

export REFRESH_TOKEN=$(bashio::config 'refresh_token')
bashio::log.info "Refresh token configured as ${REFRESH_TOKEN}."

bashio::log.info "Starting stremio service."
node server.js 

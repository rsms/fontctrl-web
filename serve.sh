#!/bin/sh
set -e
cd "$(dirname "$0")"

jekyll serve --limit_posts 20 --watch --host 0.0.0.0 --port 3000 --open-url

# if (which caddy >/dev/null); then
#   caddy_args=(\
#     -host localhost -port 1983 \
#     "bind localhost" \
#     "mime .woff2 font/woff2" \
#     "mime .woff application/font-woff" \
#   )
#   caddy "${caddy_args[@]}"
# elif (which servedir >/dev/null); then
#   servedir . 1983
# else
#   echo "Can not find 'caddy' nor 'servedir' in PATH." >&2
#   echo "Install caddy from brew, apt or https://caddyserver.com/download"
#   echo "or install servedir with 'npm install -g secure-servedir'"
#   exit 1
# fi

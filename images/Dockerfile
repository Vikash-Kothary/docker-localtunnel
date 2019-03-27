FROM node:11.12.0-alpine
RUN npm install -g localtunnel

ARG PORT
ENV LT_PORT=${PORT}
ARG SUBDOMAIN
ENV LT_SUBDOMAIN=${SUBDOMAIN}


CMD ["usr/local/bin/lt", "--port", "${LT_PORT}", "--subdomain", "${LT_SUBDOMAIN}", "--local-host", ""]
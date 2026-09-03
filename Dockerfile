FROM alpine:3.24.1
RUN apk add --no-cache curl jq
COPY netlify-ddns /
ENTRYPOINT [ "/netlify-ddns" ]
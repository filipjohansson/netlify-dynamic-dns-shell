FROM alpine:3.20.3
RUN apk add --no-cache curl jq
COPY netlify-ddns /
ENTRYPOINT [ "/netlify-ddns" ]
FROM alpine:3.14.3
RUN apk add --no-cache curl jq
COPY netlify-ddns /
ENTRYPOINT [ "/netlify-ddns" ]
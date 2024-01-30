FROM alpine:3.19.1
RUN apk add --no-cache curl jq
COPY netlify-ddns /
ENTRYPOINT [ "/netlify-ddns" ]
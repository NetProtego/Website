FROM nginx:1.27-alpine

LABEL org.opencontainers.image.source="https://github.com/NetProtego/Website" \
      org.opencontainers.image.description="NetProtego website"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

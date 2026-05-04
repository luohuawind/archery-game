FROM lipanski/docker-static-website:2.6.0

# 静态文件路径 /home/static
COPY . /home/static/

ENTRYPOINT ["/busybox-httpd", "-f", "-v"]
CMD [ "-p", "5143" ]

# 暴露端口
EXPOSE 5143

# docker build -t firfe/jjjx:2025.09.14 .

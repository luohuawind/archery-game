FROM ubuntu:22.04

# 设置工作目录为 /app
WORKDIR /app

# 安装必要依赖（Git、nginx、调试工具）
RUN apt-get update && apt-get install -y \
    git \
    nginx \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

# 初始化 Git 仓库（满足规范要求）
RUN git init

# 复制游戏文件到 /app
COPY . /app/

# 将静态文件链接到 nginx 默认目录
RUN ln -sf /app /var/www/html/app

# 暴露端口
EXPOSE 80

# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]
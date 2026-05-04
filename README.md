# 箭箭惊心 (Archery Game)



> 来源：网上

> 用途：代码标注训练素材



\## 游戏说明



包含三款小游戏：转盘飞刀、箭箭惊心、层层击破。支持手机端游玩。



\## Docker 运行



```bash

docker build -t archery-game .

docker run -d --name archery -p 8080:5143 archery-game

# 构建符合标注规范的镜像
docker build -t archery-game-annotation .

# 运行容器
docker run -d --name my-archery -p 8080:80 archery-game-annotation

## 项目指令

```bash
  # 编译项目 
  # 树莓派4B使用，其他使用情况需要修改platform参数
  $ docker build -t <docker_registry/image:tag> --platform linux/arm/v7 .

  # 推送项目
  $ docker logout
  $ docker login -u <username>
  $ docker push <docker_registry/image:tag>

  # 下载与使用
  $ docker pull <docker_registry/image:tag>
  $ mkdir clash
  $ cd clash
  $ vim config.yaml # 编辑初始的配置文件 需要包含 `external-ui: /ui`
  $ docker run -itd -p 9090:9090 -p 7890:7890 --restart=always -v ./:/root/.config/clash <docker_registry/image:tag>
  
```
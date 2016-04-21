# Ubuntu 14.04，Trusty Tahr（可靠的塔尔羊）发行版
FROM ubuntu:trusty

# 道客船长荣誉出品
MAINTAINER Captain Dao <support@daocloud.io>

# APT 自动安装 Python 相关的依赖包，如需其他依赖包在此添加
RUN apt-get update && \
    apt-get install -y python \
                       python-dev \
                       python-pip  \
    # 用完包管理器后安排打扫卫生可以显著的减少镜像大小
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 


# 配置默认放置 App 的目录
RUN mkdir -p /app
WORKDIR /app
EXPOSE 80
CMD ["bash"]

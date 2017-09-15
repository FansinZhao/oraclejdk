# oracle jdk

# VERSION

jdk-8u144-linux-x64

# WHAT

这个是oracle jdk的alpine版镜像,参考openjdk的优化策略进行了优化,由于没有充分的测试,
在使用过程中,可能存在一些问题,请获悉.
未经过优化时,jdk解压包大小为377M,优化后的解压包大小为143M(不包含alpine的12M).

# HOW TO USE

你可以直接在Dockerfile中使用
   
    FROM fansin/oraclejdk
    ENTRYPOINT ["java"]
    CMD ["-version"]
    
构建自己的镜像
    
    docker build -t oraclejdk .

运行容器
    
    $ docker run --rm oraclejdk
    java version "1.8.0_144"
    Java(TM) SE Runtime Environment (build 1.8.0_144-b01)
    Java HotSpot(TM) 64-Bit Server VM (build 25.144-b01, mixed mode)

容器大小为162M

    $ docker images | grep oraclejdk
    oraclejdk                      latest              945efeb622e1        About a minute ago   162MB


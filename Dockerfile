FROM fansin/alpine:glibc
#
MAINTAINER FansinZhao 171388204@qq.com
#java7->java9 $MAJOR.$update_release$build
#java9+ $MAJOR.$MINOR.$SECURITY.$PATCH
ENV MAJOR_UPDATE=jdk-8u211
ENV MAJOR_UPDATE_BUILD=${MAJOR_UPDATE}-b12
ENV JAVA_VERSION=${MAJOR_UPDATE_BUILD}-linux-x64


#
RUN wget -O oracle-jdk.tar.gz http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}.tar.gz && \
    tar -zxvf oracle-jdk.tar.gz -C /usr/local/ && \
    mv /usr/local/${MAJOR_UPDATE} /usr/local/jdk && \
    rm oracle-jdk.tar.gz && \
    rm -rf /usr/local/jdk/src.zip \
           /usr/local/jdk/db \
           /usr/local/jdk/man \
           /usr/local/jdk/bin/ControlPanel \
           /usr/local/jdk/bin/jcontrol \
           /usr/local/jdk/bin/javaws \
           /usr/local/jdk/bin/javaws \
           /usr/local/jdk/lib/missioncontrol \
           /usr/local/jdk/lib/visualvm \
           /usr/local/jdk/lib/*javafx* \
           /usr/local/jdk/lib/ant-javafx.jar \
           /usr/local/jdk/lib/javafx-mx.jar \
           /usr/local/jdk/lib/packager.jar \
           /usr/local/jdk/lib/sa-jdi.jar \
           /usr/local/jdk/lib/visualvm \
           /usr/local/jdk/jre/plugin \
           /usr/local/jdk/jre/lib/fonts \
           /usr/local/jdk/jre/lib/locale \
           /usr/local/jdk/jre/lib/jfr \
           /usr/local/jdk/jre/lib/oblique-fonts \
           /usr/local/jdk/jre/lib/plugin.jar \
           /usr/local/jdk/jre/lib/ext/jfxrt.jar \
           /usr/local/jdk/jre/bin/javaws \
           /usr/local/jdk/jre/lib/javaws.jar \
           /usr/local/jdk/jre/lib/desktop \
           /usr/local/jdk/jre/lib/deploy* \
           /usr/local/jdk/jre/lib/*javafx* \
           /usr/local/jdk/jre/lib/*jfx* \
           /usr/local/jdk/jre/lib/fontconfig.RedHat* \
           /usr/local/jdk/jre/lib/fontconfig.SuSE* \
           /usr/local/jdk/jre/lib/fontconfig.Turbo* \
           /usr/local/jdk/jre/libdeploy \
           /usr/local/jdk/jre/libdeploy.jar \
           /usr/local/jdk/jre/libdesktop \
           /usr/local/jdk/jre/libfontconfig.bfc \ 
           /usr/local/jdk/jre/libfontconfig.properties.src \
           /usr/local/jdk/jre/libfonts \
           /usr/local/jdk/jre/libjavaws.jar \
           /usr/local/jdk/jre/libjfr* \
           /usr/local/jdk/jre/liboblique-fonts \
           /usr/local/jdk/jre/lib/amd64/libavplugin* \
           /usr/local/jdk/jre/lib/amd64/libbci.so \
           /usr/local/jdk/jre/lib/amd64/libdcpr.so \
           /usr/local/jdk/jre/lib/amd64/libdecora_sse.so \
           /usr/local/jdk/jre/lib/amd64/libdeploy \
           /usr/local/jdk/jre/lib/amd64/libjavafx* \
           /usr/local/jdk/jre/lib/amd64/libjfr.so \
           /usr/local/jdk/jre/lib/amd64/libjpe \
           /usr/local/jdk/jre/lib/amd64/libkcms.so \
           /usr/local/jdk/jre/lib/amd64/liblcms.so \
           /usr/local/jdk/jre/lib/amd64/libnpjp2.so \
           /usr/local/jdk/jre/lib/amd64/libprism_*.so \
           /usr/local/jdk/jre/lib/amd64/libfxplugins.so \
           /usr/local/jdk/jre/lib/amd64/libglass.so \
           /usr/local/jdk/jre/lib/amd64/libgstreamer-lite.so \
           /usr/local/jdk/jre/lib/amd64/libjfx*.so \
           /usr/local/jdk/jre/lib/ext/jfxrt.jar \
           /usr/local/jdk/jre/lib/ext/javafx.properties \ 
           /usr/local/jdk/jre/lib/ext/jfxswt.jar 

## Set JAVA_HOME environment
ENV JAVA_HOME /usr/local/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

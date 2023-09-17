FROM python:3.9
COPY ./jdk-11.0.19_linux-x64_bin.deb /tmp
RUN apt update
RUN apt install -y libasound2
RUN dpkg -i /tmp/jdk-11.0.19_linux-x64_bin.deb
ENV PATH=/usr/lib/jvm/jdk-11/bin:$PATH
ENV JAVA_HOME /usr/lib/jvm/jdk-11

FROM opensuse:13.2

RUN \
  zypper update -y && \
  zypper install -y \
    wget \
    curl \
    git \
    sudo 

RUN \
  zypper addrepo http://download.opensuse.org/repositories/devel:languages:python/openSUSE_13.1/devel:languages:python.repo && \
  zypper --non-interactive  --no-gpg-checks refresh -f && \
  zypper install -y supervisor 

RUN \
  zypper install -y java-1_7_0-openjdk && \ 
  java -version


ENV JAVA_HOME=/usr/lib64/jvm/java-1.7.0-openjdk-1.7.0
CMD ["bash"]

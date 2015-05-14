FROM phusion/baseimage:0.9.15

MAINTAINER Dominique Ronde <dominique.ronde@codecentric.de

# Install Oracle Java 8
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections;
RUN add-apt-repository -y ppa:webupd8team/java;
RUN apt-get update;
RUN apt-get install -y oracle-java8-installer;

#Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/sbin/my_init"]
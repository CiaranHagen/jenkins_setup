FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y maven git r-base r-base-dev && \
    apt-get clean

RUN R -e "install.packages('renv')"

USER jenkins


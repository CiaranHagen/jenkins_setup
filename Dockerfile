FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y maven git r-base r-base-dev cmake libcurl4-openssl-dev libpq-dev libssl-dev libx11-dev pandoc dirmngr gnupg wget ca-certificates libxml2-dev && \ 
    apt-get clean
# dirmngr gnupg wget ca-certificates libxml2-dev
RUN R -e "install.packages('renv')"

USER jenkins


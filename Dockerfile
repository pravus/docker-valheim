FROM ubuntu:focal

RUN apt -y update \
 && apt -y upgrade

RUN apt -y install software-properties-common \
 && add-apt-repository multiverse \
 && dpkg --add-architecture i386 \
 && apt -y update \
 && apt -y upgrade \
 && echo 2 | apt -y install steamcmd

RUN /usr/games/steamcmd +login anonymous +force_install_dir /valheim +app_update 896660 validate +exit

COPY entrypoint /entrypoint

ENTRYPOINT ["/entrypoint"]

#> Arch Updated
#? https://github.com/passcod/docker-arch-updated
FROM base/archlinux
MAINTAINER Félix Saparelli me@passcod.name

RUN pacman -Syu --ignore filesystem --noconfirm --needed &&\
  pacman -Scc --noconfirm &&\
  rm -rf /var/cache/pacman/pkg/*

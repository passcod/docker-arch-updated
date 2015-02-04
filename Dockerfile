#> Arch Updated
#? https://github.com/passcod/docker-arch-updated
FROM base/archlinux
MAINTAINER Félix Saparelli me@passcod.name

ONBUILD RUN pacman -Sy --noprogressbar --noconfirm &&\
  pacman -S pacman --noprogressbar --noconfirm &&\
  pacman-db-upgrade &&\
  pacman -Syyu --noprogressbar --noconfirm --needed &&\
  pacman -Scc --noconfirm &&\
  rm -rf /var/cache/pacman/pkg/*

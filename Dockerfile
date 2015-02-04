#> Arch Updated
#? https://github.com/passcod/docker-arch-updated
FROM base/archlinux
MAINTAINER Félix Saparelli me@passcod.name

RUN curl -# -o /etc/pacman.d/mirrorlist https://www.archlinux.org/mirrorlist/all/
RUN pacman -Sy --noprogressbar --noconfirm &&\
  pacman -S pacman --noprogressbar --noconfirm &&\
  pacman-db-upgrade &&\
  pacman -Syyu --noprogressbar --noconfirm --needed &&\
  pacman -Scc --noconfirm &&\
  rm -rf /var/cache/pacman/pkg/*

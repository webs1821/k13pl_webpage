#!/bin/sh
#code from https://chringel.dev/2022/03/inline-svg-icons-for-hugo/

set -ex
icons="logo-facebook logo-instagram logo-youtube print-outline logo-github logo-gitlab"
dest=assets/svg/ionicons
url=https://unpkg.com/ionicons/dist/svg/
mkdir -p "${dest}"
for icon in $icons; do
  icon="${icon}.svg"
  wget -O "${dest}/${icon}" "${url}/${icon}"
done

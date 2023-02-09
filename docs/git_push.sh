#!/bin/sh

#-----------------------------------------------

ver=1.0
dir="mheredia.github.io"
mail="chelqo@gmail.com"
user="chelqo"
token="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"

#-----------------------------------------------

git config --global user.email "${mail}"
git config --global user.name "${user}"
git config --global push.default matching

cd ${dir}

git status
git fetch origin

read -p "Ingrese lista de archivos para actualizar: " lista
[ -n "${lista}" ] && git add $lista || { echo "Terminado..." ; exit ; }

read -p "Ingrese descripción del commit: " texto
[ -n "${texto}" ] && git commit -m "${texto}"

echo "
Username: ${user}
Password: ${token}
"
git push origin main

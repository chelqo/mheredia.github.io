#!/bin/sh

#-----------------------------------------------

ver=1.0
dir="mheredia.github.io"
mail="chelqo@gmail.com"
user="chelqo"
token="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"
date=`date +"%F %a %R"`

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
[ -n "${texto}" ] && git commit -m "${texto}" || git commit -m "${date}"

echo "
Username: ${user}
Password: ${token}
"
#echo -n ${token} | xsel --clipboard
git push origin main

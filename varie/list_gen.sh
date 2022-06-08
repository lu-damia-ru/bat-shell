#!/bin/bash
cd /Volumes/EMTEC/FILM
ls -R > ../99_FILM.txt
cd /Volumes/EMTEC/FILM_VEDERE
ls -R > ../99_FILM_VEDERE.txt
cd ..
cp *.txt /Volumes/250GiB/"Google Drive"/

cd /Volumes/EMTEC/FILM/serie
ls -R ./I\ Simpson/ > 99_Simpson.txt
ls -R ./I\ Griffin/ > 99_Griffin.txt
cp *.txt /Volumes/250GiB/"Google Drive"/
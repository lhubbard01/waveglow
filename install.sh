#!/bin/bash

open https://drive.google.com/file/d/1cjKPHbtAMh_4HTHmuIGNkbOkPBD9qwhj/view?usp=sharing
open https://drive.google.com/file/d/1g_VXK2lpP9J25dQFhQwx7doWl_p20fXA/view?usp=sharing

while true; do
	read -p "Have you downloaded both files?" yn
	case $yn in
		[Yy]* ) break;;
		[Nn]* ) echo "once you have completed the download of both files, enter y";;
		* ) echo "enter y once you have completed or ctrl-c to exit installation";;
	esac

done
USER=$("whoami")
mv /Users/$USER/Downloads/waveglow_old.pt  .
mv /Users/$USER/Downloads/mel_spectograms/ .

CONDA="conda"
if ! type "$(type -p "$conda")" > /dev/null; then
	while true; do 
		read -p "Do you want to install it? Click n to  get directions.  ONLY ONCE MANUALLY INSTALLED  SHOULD YOU CLICK y" yn
		case $yn in
			[Yy]* ) echo "click n i wrote a shit script, this is to just let you install it before this script runs a command contingent on its proper installation";  break;;
			[Nn]* ) echo "anaconda is needed to handle the virtual environment and installation of required packages.\n Download an installer here:  https://conda.io/miniconda.html , and then add its bin location to your path, via \' vim *sh.rc\';  and write \'export PATH=\"\$CONDA_LOC:\$PATH\"\"";;
			*) echo "enter y or n";;
		esac
	done
fi
conda create --name waveglow

while true; do
	read -p "Do you want to launch the environment? This will include the downloading of all necessary packages" yn
	case $yn in 
		[Yy]* ) echo "select n.  This is broke fuckin shit";;
		[Nn]* ) echo "ok.  run \"python3 grab_requirements\" once you have activated your virtual environment!"; exit;;
		* ) echo "yes or no";;
	esac
done 
python3 grab_packages.py

  # install foobar here

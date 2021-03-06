#!/usr/bin/env bash

# %%%% TeXTallion %%%%
# Tiny almost-Kiss Word Processor
# http://anamnese.online.fr/site2/textallion/docs/presentation.html
# Complete source code: http://code.google.com/p/textallion/
# License: http://en.wikipedia.org/wiki/BSD_licenses

# This script will install textallion into /usr/share/textallion unless you modify the INSTALLPATH value.


#INSTALLPATH=/usr/share/textallion/
INSTALLPATH=/home/flamenco/bin/textallion/

# allow to pause the script until a keypress 
pause(){
   read -s -n 1 -p "$*"
}

install(){
	cp -fr ../textallion/* ${INSTALLPATH}
	chmod -R 755 ${INSTALLPATH}/
	chmod +x ${INSTALLPATH}/contrib/txt2tags/txt2tags
	echo "/usr/bin/env bash ${INSTALLPATH}/core/textallion.sh" > /usr/bin/textallion
	rm -fr ${INSTALLPATH}/.hg/
	mkdir -p ${INSTALLPATH}/.hg/
	cp -fr ../textallion/contrib/others/hgrc ${INSTALLPATH}/.hg/
	chmod +x /usr/bin/textallion
	sed -i -e "s|TEXTALLIONPATH=/usr/share/textallion/|TEXTALLIONPATH=${INSTALLPATH}|g" ${INSTALLPATH}/core/textallion.sh
	if test core/textallion.t2t -nt ${INSTALLPATH}/core/textallion.t2t; then
    	printf "\n** Error **\n"
    else 
    	printf "\nThe installation or update was done, Textallion was installed into ${INSTALLPATH}\n"
	fi

}

check_install(){
	if [ -e ${INSTALLPATH} ]; then 
		echo "The installation path" ${INSTALLPATH} "is already here. Do you want to replace/update TeXtallion? (Y/n)"
		read updateit
			case $updateit in
					"n"|"N"|"no"|"NO"|"non")
						echo "Nothing was changed in your configuration"
						;;
					"y"|"Y"|"yes"|*)
						install
						;;
		esac
	else 
		echo "We'll install 'The TeXtallion' to:" ${INSTALLPATH}
		echo "(If you run this script with the correct rights)"
		echo " "
		echo "If you really wish to change the path, please edit this script (not recommended)."
		echo " "
		pause "Press a touch to begin (or ctrl+c to cancel)..."
		echo " "
		mkdir -p ${INSTALLPATH}
		install
	fi
}

check_install


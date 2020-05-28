#!/bin/bash

distr=`awk 'NR==1 {print $1}' /etc/*-release`
if [[ "$distr" == "DISTRIB_ID=Ubuntu" ]]; then
    echo "############ Ubuntu detected ############"
    echo "############ Install texlive-latex-extra ############"
    sudo apt-get install texlive-latex-extra
    echo "############ Install texlive-bibtex-extra ############"
    sudo apt install texlive-bibtex-extra
    echo "############ Install biber ############"
    sudo apt install biber
    echo "############ Install cm-super ############"
    sudo apt install cm-super
    echo "############ Install texlive-lang-cyrillic ############"
    sudo apt install texlive-lang-cyrillic
    echo "############ Install texlive-fonts-recommended ############"
    sudo apt-get install texlive-fonts-recommended
    echo "############ Install libreoffice ############"
    sudo apt install libreoffice
    echo "############ Install make ############"
    sudo apt install make
else
    echo "############           Your distribution is not Ubuntu!         ############"
    echo "############ Find the following packages for your distribution: ############"
    echo "############      1. texlive-latex-extra or bibtex              ############"
    echo "############      2. texlive-bibtex-extra or bibtex             ############"
    echo "############      3. biber                                      ############"
    echo "############      4. cm-super                                   ############"
    echo "############      5. texlive-lang-cyrillic                      ############"
    echo "############      6. install texlive-fonts-recommended          ############"
    echo "############      7. libreoffice                                ############"
    echo "############      8. make                                       ############"

fi

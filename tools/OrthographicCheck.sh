#!/bin/bash

# Esegue il controllo ortografico del documento indicato
# Attenzione! Prima di lanciare questo script installare il pacchetto aspell-it
# --mode=tex	  ->	indica che si vuole analizzare un documento latex
# --lan=en	  -> 	indica che la lingua da utilizzare e' l'inglese
# --master=en	  -> 	indica che il dizionario da utilizzare e' quello inglese
# --run-together  ->	indica di considerare le parole composte
# --clean-words	  ->	indica di eseguire la correzione delle parole
# check $1	  ->	indica che si vuole controllare il file passato come primo parametro	

if [ -z $1 ]
then
	exit 1
fi

aspell --mode=tex --lang=it --master=it --run-together --clean-words check $1 

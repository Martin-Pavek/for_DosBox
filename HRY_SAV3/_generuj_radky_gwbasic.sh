#!/usr/bin/bash

poc1=1000
#poc2=1

cesta='C:\HRY\'

# radky "NONE" se pak uz musej vyplnit rucne, dal uz automatizovat nejde
# tento script sputit v adresari HRY a presmerovat vystup do nejakeho docasneho souboru
# ten pak vlozit na prislusne misto do BACKSAVE.BAS
# kdyby byl nejakej problem tak na to jeste pouzit utilitu unix2dos

for adresar in * ; do
#line=$poc' AH$('$poc2')="'$cesta$adresar'\" : SC$('$poc2')="NONE"'
line=$poc1' AH$('$((poc1-999))')="'$cesta$adresar'\" : SC$('$((poc1-999))')="NONE"'
echo $line
(( poc1++ ))
#(( poc2++ ))
#(( poc1++ , poc2++ )) # funguje inkrementuje oboji, musi bejt doddeleny carkou
done


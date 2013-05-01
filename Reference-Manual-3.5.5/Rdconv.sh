Rdfiles=`ls ../../man/*.Rd`
for rd in ${Rdfiles}
  do
    echo $rd
    newname=`basename ${rd} .Rd`
    echo $newname
    R CMD Rdconv -t=latex ${rd} -o commandsRd/${newname}.tex
  
    ### perl -i -pe 's#HeaderA{#section{{\\tt #i' commandsRd/${newname}.tex
    perl -i -pe 's#HeaderA{(.*)}{(.*)}{(.*)}#section{{\\tt \1}: \2}\\label{ss:\3}#i' commandsRd/${newname}.tex 

done


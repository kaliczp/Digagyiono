beolvas=function(file){
  teszt=read.table(file, skip=4, sep="|", comment="=")
  teszt[1,2:16] ## Az első és az utolsó oszlop törlése
  teszt[1,-c(1,17)] ## Másképpen
  teszt.jav=teszt[,-c(1,ncol(teszt))] ## Egész fájlra másképpen
  ## Fejléc
  teszt.head=read.table(file="20130601.tab", skip=2, sep="|", nrows=1, stringsAs=F, quot="")
  teszt.head.jav=teszt.head[,-c(1,ncol(teszt.head))]
  colnames(teszt.jav)=teszt.head.jav
  teszt.jav
}

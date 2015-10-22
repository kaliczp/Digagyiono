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

## mappa összes fájlja: dir()
## fájl válogatás: pl.: dir(pattern = "*.tab")
## HELP erre: Reguláris kifejezések(*,. stb) v. R-ben Regular expression

## Ha bizonyos csoportosítás szerinti fájlokkal akarok dolgozni:
## scan("lista.txt","character", n=2,)
## a scan fv. gyorsabban olvas be, és ott kiírja a dátumot, amit majd a sorok elejére kell majd
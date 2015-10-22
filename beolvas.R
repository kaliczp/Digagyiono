beolvas=function(file){
    fullfile <- data.frame()
    for(aktualis.file in file){  
        teszt=read.table(aktualis.file, skip=4, sep="|", comment="=")
        teszt.jav=teszt[,-c(1,ncol(teszt))] ## Egész fájlra másképpen
        akt.datum <- scan(aktualis.file,"character",n=2)[2]
        ## Fejléc
        teszt.head=read.table(file="20130601.tab", skip=2, sep="|", nrows=1, stringsAs=F, quot="")
        teszt.head.jav=teszt.head[,-c(1,ncol(teszt.head))]
        colnames(teszt.jav)=teszt.head.jav
        teszt.jav
        teszt.jav <- cbind(akt.datum,teszt.jav)
        fullfile <- rbind(fullfile,teszt.jav)
    }
    fullfile
}

## mappa összes fájlja: dir()
## fájl válogatás: pl.: dir(pattern = "*.tab")
## HELP erre: Reguláris kifejezések(*,. stb) v. R-ben Regular expression

## Ha bizonyos csoportosítás szerinti fájlokkal akarok dolgozni:
## scan("lista.txt","character", n=2,)
## a scan fv. gyorsabban olvas be, és ott kiírja a dátumot, amit majd a sorok elejére kell majd
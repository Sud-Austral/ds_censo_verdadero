* Encoding: UTF-8.


GET DATA  /TYPE=TXT
  /FILE="Microdato_Censo2017-Comunas.csv"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"' 
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  COMUNA F9.0
  NOM_COMUNA A120.
CACHE.
EXECUTE.
DATASET NAME Microdato_Censo2017_Comunas WINDOW=FRONT.

* Encoding: UTF-8.


GET DATA  /TYPE=TXT
  /FILE="Microdato_Censo2017-Hogares.csv"
  /ENCODING='UTF8'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"' 
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  REGION F9.0
  PROVINCIA F9.0
  COMUNA F9.0
  DC F9.0
  AREA F9.0
  ZC_LOC F9.0
  ID_ZONA_LOC F9.0
  NVIV F9.0
  NHOGAR F9.0
  TIPO_HOGAR F9.0
  TIPO_OPERATIVO F9.0.
CACHE.
EXECUTE.
DATASET NAME Microdato_Censo2017_Hogares WINDOW=FRONT.

DATASET ACTIVATE Microdato_Censo2017-Hogares.

VARIABLE LABELS
REGION 'Región'
PROVINCIA 'Provincia'
COMUNA 'Comuna'
DC 'Distrito'
AREA 'Área (Urbano / Rural)'
ZC_LOC 'Zona (Urbano) o Localidad (Rural)'
ID_ZONA_LOC 'Identificador Zona/Localidad'
NVIV 'Número de la Vivienda'
NHOGAR 'Número del Hogar'
TIPO_HOGAR 'Tipología de Hogar'
TIPO_OPERATIVO 'Tipo de Operativo Censal'.
EXECUTE.

MISSING VALUES TIPO_HOGAR(98).
VALUE LABELS TIPO_HOGAR
1 'Hogar unipersonal'
2 'Hogar nuclear monoparental'
3 'Hogar nuclear biparental sin hijos'
4 'Hogar nuclear biparental con hijos'
5 'Hogar compuesto'
6 'Hogar extenso'
7 'Hogar sin núcleo'
98 'No Aplica'.
EXECUTE.

VALUE LABELS TIPO_OPERATIVO
1 'Operativo viviendas particulares'
8 'Operativo viviendas colectivas (no es hogar)'
9 'Operativo personas en tránsito (no es hogar)'
10 'Operativo de calle (no es hogar)'.
EXECUTE.


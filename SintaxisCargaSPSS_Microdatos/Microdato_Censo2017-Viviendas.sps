* Encoding: UTF-8.


GET DATA  /TYPE=TXT
  /FILE="Microdato_Censo2017-Viviendas.csv"
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
  P01 F9.0
  P02 F9.0
  P03A F9.0
  P03B F9.0
  P03C F9.0
  P04 F9.0
  P05 F9.0
  CANT_HOG F9.0
  CANT_PER F9.0
  REGION_15R F9.0
  PROVINCIA_15R F9.0
  COMUNA_15R F9.0.
CACHE.
EXECUTE.
DATASET NAME Microdato_Censo2017_Viviendas WINDOW=FRONT.

DATASET ACTIVATE Microdato_Censo2017-Viviendas.

VARIABLE LABELS
REGION 'Región'
PROVINCIA 'Provincia'
COMUNA 'Comuna'
DC 'Distrito'
AREA 'Área (Urbano / Rural)'
ZC_LOC 'Zona (Urbano) o Localidad (Rural)'
ID_ZONA_LOC 'Identificador Zona/Localidad'
NVIV 'Número de la Vivienda'
P01 'Tipo de vivienda'
P02 'Ocupación de la vivienda'
P03A 'Material de los muros exteriores'
P03B 'Material en la cubierta del techo'
P03C 'Material de construcción del piso'
P04 'Número de piezas usadas exclusivamente como dormitorio'
P05 'Origen del Agua'
CANT_HOG 'Cantidad de Hogares'
CANT_PER 'Cantidad de Personas'
REGION_15R 'Región (previo a Región de Ñuble)'
PROVINCIA_15R 'Provincia (previo a Región de Ñuble)'
COMUNA_15R 'Comuna (previo a Región de Ñuble)'.
EXECUTE.

MISSING VALUES P01(0, 11).
VALUE LABELS P01
1 'Casa'
2 'Departamento en edificio'
3 'Vivienda tradicional indígena (ruka, pae pae u otras)'
4 'Pieza en casa antigua o en conventillo'
5 'Mediagua, mejora, rancho o choza'
6 'Móvil (carpa, casa rodante o similar)'
7 'Otro tipo de vivienda particular'
8 'Vivienda colectiva'
9 'Operativo personas en tránsito (no es vivienda)'
10 'Operativo calle (no es vivienda)'
0 'No Aplica'
11 'Missing'.
EXECUTE.

MISSING VALUES P02(0, 5).
VALUE LABELS P02
1 'Con moradores presentes'
2 'Con moradores ausentes'
3 'En venta, para arriendo, abandonada u otro'
4 'De temporada (vacacional u otro)'
0 'No Aplica'
5 'Missing'.
EXECUTE.

MISSING VALUES P03A(98, 99).
VALUE LABELS P03A
1 'Hormigón armado'
2 'Albañilería: bloque de cemento, piedra o ladrillo'
3 'Tabique forrado por ambas caras (madera o acero)'
4 'Tabique sin forro interior (madera u otro)'
5 'Adobe, barro, quincha, pirca u otro artesanal tradicional'
6 'Materiales precarios (lata, cartón, plástico, etc.)'
98 'No Aplica'
99 'Missing'.
EXECUTE.

MISSING VALUES P03B(98, 99).
VALUE LABELS P03B
1 'Tejas o tejuelas de arcilla, metálicas, de cemento, de madera, asfálticas o plásticas'
2 'Losa hormigón'
3 'Planchas metálicas de zinc, cobre, etc. o fibrocemento (tipo pizarreño)'
4 'Fonolita o plancha de fieltro embreado'
5 'Paja, coirón, totora o caña'
6 'Materiales precarios (lata, cartón, plásticos, etc.)'
7 'Sin cubierta sólida de techo'
98 'No Aplica'
99 'Missing'.
EXECUTE.

MISSING VALUES P03C(98, 99).
VALUE LABELS P03C
1 'Parquet, piso flotante, cerámico, madera, alfombra, flexit, cubrepiso u otro similar, sobre radier o vigas de madera'
2 'Radier sin revestimiento'
3 'Baldosa de cemento'
4 'Capa de cemento sobre tierra'
5 'Tierra'
98 'No Aplica'
99 'Missing'.
EXECUTE.

MISSING VALUES P04(98, 99).
VALUE LABELS P04
0 '0 piezas'
1 '1 pieza'
2 '2 piezas'
3 '3 piezas'
4 '4 piezas'
5 '5 piezas'
6 '6 o más piezas'
98 'No Aplica'
99 'Missing'.
EXECUTE.

MISSING VALUES P05(98, 99).
VALUE LABELS P05
1 'Red pública'
2 'Pozo o noria'
3 'Camión aljibe'
4 'Río, vertiente, estero, canal, lago, etc.'
98 'No Aplica'
99 'Missing'.
EXECUTE.

MISSING VALUES CANT_HOG(98).
VALUE LABELS CANT_HOG
98 'No Aplica'.
EXECUTE.


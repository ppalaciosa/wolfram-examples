(* ::Package:: *)

(* ::Text:: *)
(*Aqui importo los datos (que est\[AAcute]n en un lugar de mi PC) a la variable "data".*)


(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]];*)
(*data:=Import["lista.txt",{"Data",{All},{1,2}}](* Data: datos en bruto como listas. All y 1, 2: Todo lo de la columna 1 y 2 *)*)
(*data*)


(* ::Text:: *)
(*Los usar\[EAcute] luego, primero algunos ejemplos.*)


(* ::Text:: *)
(*Ejemplo 1: creo una lista, la interpolo y comparo grados de interpolacion.*)


(* ::Input:: *)
(*List1={{0,0},{0.1,.3},{0.5,.6},{1,-.2},{2,3}}*)


(* ::Input:: *)
(*ListPlot[List1]*)


(* ::Text:: *)
(*Ignorar el Manipulate. Lo que importa aqui es esto: Interpolation[List1, InterpolationOrder->n][x], {x,0,2}. Esa es la sintaxis para interpolar la lista ("List1" en este ejemplo), y que el "n" en general se reemplazar\[AAcute] por el valor que se requieras.*)


(* ::Input:: *)
(*Manipulate[Plot[Interpolation[List1, InterpolationOrder->n][x], {x,0,2}], {n,1,4,1}, {n,Range[4]}] (* En este caso, solo me permite hasta 4*)*)


(* ::Input:: *)
(*List2={{0,0}, {0.5,1}, {1,0},{1.5,-1}, {2,0}}*)


(* ::Input:: *)
(*ListPlot[List2]*)


(* ::Text:: *)
(*Genero la variable "List2Int" que ser\[AAcute] la variable donde genero la interpolacion de datos. Y la ploteo.*)


(* ::Input:: *)
(*List2Int= Interpolation[List2,InterpolationOrder->1][x]*)


(* ::InheritFromParent:: *)
(**)


(* ::Input:: *)
(*Plot[List2Int, {x, 0, 2}]*)


(* ::Input:: *)
(*Integrate[List2Int, {x,0,2}]*)


(* ::Text:: *)
(* *)


(* ::Text:: *)
(*Ahora trabajo con los datos:*)


(* ::Input:: *)
(*ListPlot[data,PlotRange ->{0,7}] (* PlotRange: valores del ejeY, Joined True: juntar los datos *)*)


(* ::Input:: *)
(*DataInt=Interpolation[data,InterpolationOrder->1][x]*)


(* ::Text:: *)
(*Solo por si las dudas, chequeo como queda la interpolaci\[OAcute]n para orden 1.*)


(* ::Input:: *)
(*Plot[DataInt,{x,0.08,0.95}, PlotRange->{0,7}] (* Ojo que uso los limites de tus datos*)*)


(* ::Text:: *)
(* *)


(* ::Text:: *)
(*Ahora si integramos.*)


(* ::Input:: *)
(*Integrate[DataInt, {x,0.08,0.95}]*)

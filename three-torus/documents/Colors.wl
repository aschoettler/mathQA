(* ::Package:: *)

(*ClearAll[tempColors];
tempColors[n_]:=ColorData["ThermometerColors"]/@Subdivide[n-1];
tempColors::usage="tempColors[n] gives a list of n regular samples of the thermometer colors.";*)


BeginPackage["Colors`"];


colorlist::usage=StringJoin[Riffle[{
	"colorlist[n, \!\(\*
StyleBox[\"name\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)gives n colors from ColorData[name], sampled evenly.",
	"colorlist[xs, \!\(\*
StyleBox[\"name\",\nFontSlant->\"Italic\"]\)] gives Length[xs] colors, sampled according to Rescale[xs].",
	"colorlist[expr, {\!\(\*SubscriptBox[\(c\), \(1\)]\),\!\(\*SubscriptBox[\(c\), \(2\)]\),\!\(\*SubscriptBox[\(c\), \(3\)]\)...}] samples colors by interpolating the \!\(\*SubscriptBox[\(c\), \(i\)]\), like Blend.",
	"colorlist[expr] is equivalent to colorlist[expr, \"ThermometerColors\"]."
	},"\n"]];


d3ColorFun::usage = "d3ColorFun[name] returns the d3 color function with the specified name, eg 'rainbow' or 'Reds'.";


cfReverse::usage = "cfReverse[cfun] reverses the given color function";
cfPreview::usage = "cfPreview[cfun] generates an image with the colors of the color function cfun.";


Begin["Private`"];


ClearAll[colorlist]
colorlist[expr:(_List|_Integer),cfname:(_String|_Integer)]:=colorlist[expr,ColorData[cfname]];
colorlist[n_Integer,cf_:d3ColorFun["plasma"]]:=cf/@Subdivide[n-1];
colorlist[xs_List,cf_:d3ColorFun["plasma"]]:=cf/@Rescale[xs];
colorlist[n_Integer,clist:{__?ColorQ}]:=Blend[clist,#]&/@Subdivide[n-1];
colorlist[xs_List,clist:{__?ColorQ}]:=Blend[clist,#]&/@Rescale[xs];


d3ColorFun[name_]:=d3ColorFun[name]=Block[{makeColorFunction},
	makeColorFunction[imgURL_]:=Block[{img,row,indecies},
		img=Import[imgURL];
		row=ImageData[img][[1]];
		indecies=N[Subdivide[Length[row]-1]];
		RGBColor@*Interpolation[Table[{indecies[[i]],row[[i]]},{i,1,Length[row]}]]];
	makeColorFunction["https://raw.githubusercontent.com/d3/d3-scale-chromatic/master/img/"<>name<>".png"]
]


cfReverse[cf_]:=cf@*(1-#&);
cfPreview[cf_,size_:{400,50}]:=LinearGradientImage[cf/@N[Subdivide[0,1,200]],size];


End[]
EndPackage[]


(* ::Section:: *)
(*To-Do*)


(* ::Text:: *)
(*TO-DO:*)
(**	Add autocomplete for color names like ColorData has.*)

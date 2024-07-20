(* ::Package:: *)

(* \:7fa4\:7684\:5143\:7d20\:5217\:8868 *)
GroupElements[Group]

(* \:9a8c\:8bc1\:5143\:7d20\:662f\:5426\:6570\:57df\:8be5\:7fa4 *)
GroupElementQ[Group, g]

(* \:7fa4\:7684\:9636 *)
GroupOrder[Group]

(* n\:9636\:5bf9\:79f0\:7fa4 *)
SymmetricGroup[n]

(* 2n\:9636\:4e8c\:9762\:4f53\:7fa4 *)
DihedralGroup[n]

(* n\:9636\:5faa\:73af\:7fa4 *)
CyclicGroup[n]

(* \:5b9a\:4e49\:6a21n\:7fa4 *)
ModuloGroup[n_] := Range[1, n - 1]

(* \:5b9a\:4e49\:6a21n\:5355\:4f4d\:7fa4 *)
ModuloUnitGroup[n_] := Select[Range[1, n - 1], GCD[#, n] == 1 &]

(* \:5b9a\:4e49\:5224\:65ad\:6a21n\:5355\:4f4d\:7fa4\:662f\:5426\:4e3a\:5faa\:73af\:7fa4\:7684\:51fd\:6570 *)
IsCyclicModuloUnitGroup[n_] := Module[
  {primitiveRoots}, primitiveRoots = PrimitiveRootList[n];
  If[Length[primitiveRoots] == 0, False, True]
]

(* \:8ba1\:7b97\:6a21n\:5355\:4f4d\:7fa4\:7684\:751f\:6210\:5143 *)
PrimitiveRootList[n]

(* \:8ba1\:7b97\:539f\:6839 *)
PrimitiveRootList[n]


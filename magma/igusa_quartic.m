/*
R<y0,y1,y2,y3,y4> := PolynomialRing(QQ,5);
f := (y0*y1 + y0*y2 + y1*y2 - y3*y4)^2 - 4*y0*y1*y2*(y0 + y1 + y2 + y3 + y4);
*/

// Thm 10.3.18, p. 543

F<nu> := CyclotomicField(5);
R<x> := PolynomialRing(F);
f := x^6-x;
roots := [el[1] : el in Roots(f)];
K := CalculateKummer(f);

/*
SpecialPlanes(roots);
[[MonomialCoefficient(p,m) : m in MonomialsOfDegree(Parent(p),1)] : p in planes];
*/

// copypasta
/*
F<nu> := CyclotomicField(5);
R<x> := PolynomialRing(F);
f := x^6-x;
roots := [el[1] : el in Roots(f)];
AddTwoTorsionPoint(f, roots);
mp_two := $1;
AddTwoTorsionPoint(f, roots[1..2]);
ts := roots[1..2];
  t1, t2 := Explode(ts);
  R<x> := Parent(g);
  k := BaseRing(R);
  G := (x-t1)*(x-t2);
  assert g mod G eq 0;
  H := g div G;
g := f;
  R<x> := Parent(g);
  k := BaseRing(R);
  G := (x-t1)*(x-t2);
  assert g mod G eq 0;
  H := g div G;
TwoTorsionMatrix(G,H);
mat_two := $1;
DiagonalForm(mat_two);
DiagonalForm;
Diagonalization;
DiagonalisingMatrix;
CharacteristicPolynomial(mat_two);
Factorization($1);
mat_two;
mat_two^2;
MinimalPolynomial(mat_two);
DiagonalisingMatrix(mat_two);
JordanForm(mat_two);
M := mat_two;
D, P := JordanForm(M);
P;
Determinant(P);
P*M*(P^-1);
Binomial(6,2);
M1 := M;
ts;
ts1 := ts;
ts2 := roots[3..4];
ts := ts2;
t1, t2 := Explode(ts);
  R<x> := Parent(g);
  k := BaseRing(R);
  G := (x-t1)*(x-t2);
  assert g mod G eq 0;
  H := g div G;
M2 := TwoTorsionMatrix(G,H);
M1;
M2;
M2^2;
M1*M2 - M2*M1;
P*M2*(P^-1);
IsDiagonal($1);
DiagonalisingMatrix;
Eigenspaces(M1);
Eigenspace;
Eigenvalues(M1);
D1 := D;
P1 := P;
D2, P2 := JordanForm(M2);
P2*M1*(P2^-1);
P1*M2*(P1^-1);
Diagonalization([M1, M2]);
Ds, Ps := Diagonalization([M1, M2]);
Parent(Ps[1]);
BaseRing($1);
#Ps;
P := Ps;
Parent(P);
#Ds;
ts3 := [roots[1], roots[3]];
ts := ts3;
assert #ts eq 2;
  t1, t2 := Explode(ts);
  R<x> := Parent(g);
  k := BaseRing(R);
  G := (x-t1)*(x-t2);
  assert g mod G eq 0;
  H := g div G;
M3 := TwoTorsionMatrix(G,H);
M3;
M3^2;
P;
Rows(Transpose(P))[1];
P*M1*(P^-1);
IsDiagonal($1);
Rows(Transpose(P^-1))[1];
v1 := $1;
v2 := v1*Transpose(M3);
v2 := v1*Transpose(ChangeRing(M3,BaseRing(Parent(v1)));
v2 := v1*Transpose(ChangeRing(M3,BaseRing(Parent(v1))));
ts1;
ts2;
ts3;
ts := [roots[1], roots[5]];
ts3 := [roots[1], roots[5]];
assert #ts eq 2;
  t1, t2 := Explode(ts);
  R<x> := Parent(g);
  k := BaseRing(R);
  G := (x-t1)*(x-t2);
  assert g mod G eq 0;
  H := g div G;
M3 := TwoTorsionMatrix(G,H);
v2 := v1*Transpose(ChangeRing(M3,BaseRing(Parent(v1))));
v1;
v2;
ts4 := [roots[3], roots[6]];
ts := ts4;
assert #ts eq 2;
  t1, t2 := Explode(ts);
  R<x> := Parent(g);
  k := BaseRing(R);
  G := (x-t1)*(x-t2);
  assert g mod G eq 0;
  H := g div G;
M4 := TwoTorsionMatrix(G,H);
v3 := v1*Transpose(ChangeRing(M4,BaseRing(Parent(v1))));
v4 := v1*Transpose(ChangeRing(M3*M4,BaseRing(Parent(v1))));
M3*M4 - M4*M3;
A := Transpose(Matrix([Eltseq(el) : el in [v1,v2,v3,v4]]));
A;
K := CalculateKummer(f);
K;
fK := DefiningEquation(K);
E := BaseRing(Parent(A));
E;
fKE := ChangeRing(fK,E);
fKE;
BaseChange(A,Parent(fKE));
BaseChange(A,MatrixAlgebra(4,Parent(fKE)));
ChangeRing(A,Parent(fKE));
A := $1;
MonomialsOfDegree(Parent(fKE),1);
SetToSequence($1);
var_mat := Matrix(4,1,$1);
A*var_mat;
new_vars := $1;
Evaluate(fKE, new_vars);
Evaluate(fKE, Eltseq(new_vars));
f_new := $1;
Monomials(f_new);
*/
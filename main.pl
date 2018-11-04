:-include('tests/test1.pl').

q1(O):-
	train(a,b,P1),
	train(b,c,P2),
    O is P1+P2.

q1(O):-
	O = "NO SUCH ROUTE".
	
q2(O):-
    train(a,d,P1),
    O is P1.
q2(O):-
	O = "NO SUCH ROUTE".

q3(O):-
    train(a,d,P1),
    train(d,c,P2),
    O is P1+P2.

q3(O):-
	O = "NO SUCH ROUTE".

q4(O):-
    train(a,e,P1),
    train(e,b,P2),
    train(b,c,P3),
    train(c,d,P4),
    O is P1+P2+P3+P4.

q4(O):-
	O = "NO SUCH ROUTE".
	
q5(O):-
    train(a,e,P1),
    train(e,d,P2),
    O is P1+P2.

q5(O):-
	O = "NO SUCH ROUTE".
	
connected6(X,Y,Z):-
    train(X,Y,_),
    Z > 0.

connected6(X,Y,Z):-
	Z>0,
    train(X,A,_),
	Temp is Z-1,
    connected6(A,Y,Temp).

q6(O):-
	findall(_, connected6(c,c,3), X),
	length(X,O).
	
q6(O):-
	O = "Invalid Input".
	
connected7(X,Y,Z):-
    train(X,Y,_),
    Z is 1.

connected7(X,Y,Z):-
	Z>0,
    train(X,A,_),
	Temp is Z-1,
    connected7(A,Y,Temp).

q7(O):-
	findall(_, connected7(a,c,4), X),
	length(X,O).
	
q7(O):-
	O = "Invalid Input".

	
distance(X,Y,Z,_):-
	train(X,Y,Z).

distance(X,Y,Z,Pcurrent):-
	train(X,A,Temp),
	not(member(A,Pcurrent)),
	append([A],Pcurrent,P),
	distance(A,Y,Temp2,P),
	Z is Temp+Temp2.

list_min([L|Ls], Min) :-
    list_min(Ls, L, Min).

list_min([], Min, Min).
list_min([L|Ls], Min0, Min) :-
    Min1 is min(L, Min0),
    list_min(Ls, Min1, Min).
	
q8(O):-
	findall(Temp, distance(a,c,Temp,[]), X),
	list_min(X,T),
	O is T.	
	
q8(O):-
	O = "Invalid Input".
	
q9(O):-
	findall(Temp, distance(b,b,Temp,[]), X),
	list_min(X,T),
	O is T.	
	
q9(O):-
	O = "Invalid Input".
	
connected10(X,Y,Z):-
    train(X,Y,Temp),
    Z > Temp.

connected10(X,Y,Z):-
    train(X,A,Temp2),
	Temp is Z-Temp2,
	Temp>0,
    connected10(A,Y,Temp).	
	
q10(O):-
	findall(_, connected10(c,c,30), X),
	length(X,O).
	
q10(O):-
	O = "Invalid Input".
	

main:-
	q1(Q1),
	q2(Q2),
	q3(Q3),
	q4(Q4),
	q5(Q5),
	q6(Q6),
	q7(Q7),
	q8(Q8),
	q9(Q9),
	q10(Q10),
	print('Output #1: '),
	print(Q1),
	nl,
	print('Output #2: '),
	print(Q2),
	nl,
	print('Output #3: '),
	print(Q3),
	nl,
	print('Output #4: '),
	print(Q4),
	nl,
	print('Output #5: '),
	print(Q5),
	nl,
	print('Output #6: '),
	print(Q6),
	nl,
	print('Output #7: '),
	print(Q7),
	nl,
	print('Output #8: '),
	print(Q8),
	nl,
	print('Output #9: '),
	print(Q9),
	nl,
	print('Output #10: '),
	print(Q10).
	
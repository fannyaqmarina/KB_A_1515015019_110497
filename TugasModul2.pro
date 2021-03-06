PREDICATES
   nondeterm anak (symbol,symbol)
   istri (symbol,symbol)
   pria (symbol)
   nondeterm wanita (symbol)
   usia (symbol,integer)
   nondeterm adik (symbol,symbol)
   nondeterm kakek (symbol,symbol)
   nondeterm cucu (symbol,symbol)
   nondeterm ibu (symbol,symbol)
  
CLAUSES
   adik(X,Y) :-
        usia(X,10) ,
        usia(Y,13) .
        
    kakek(X,Y) :-
        anak(Z,X) ,
        anak(Y,Z) .
        
   kakek(X,Y):-
        anak(Y,W) ,
        istri(W,Z) ,
        anak(Z,X) .
        
   cucu (X,Z) :-
   anak (X,Y) ,
   anak (Y,Z) .
   
   cucu (X,Y) :-
        anak (X, W) ,
        istri (W, Z) ,
        anak (Z, Y) .
        
   ibu (X,Y) :-
   anak (Y,Z) ,
   wanita (X) ,
   pria (Z) ,
   istri (X,Z) .
    
   ibu (X,Y) :-
        anak (Y,X) ,
        wanita (X) .

   anak (jhon, james) .
   anak (james, peter) .
   anak (andi, peter) .
   anak (sue, ann) .

   istri (mary, peter) .
   istri (ann, james) .

   pria (jhon) .
   pria (james) .
   pria (peter) .
   pria (andi) .

   wanita (mary) .
   wanita (sue) .
   wanita (ann) .

   usia (john , 10) .
   usia (sue, 13) .
  
GOAL
   %adik (X,Y) .
   %kakek (X,Y) .
   %ibu (X,Y) .
   %cucu (X, Y) . 
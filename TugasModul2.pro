PREDICATES
   nondeterm anak (symbol,symbol)
   istri (symbol,symbol)
   pria (symbol)
   nondeterm wanita (symbol)
   usia (symbol,integer)
   nondeterm adik (symbol,symbol)
  
CLAUSES
   adik(X,Y) :-
        usia(X,10) ,
        usia(Y,13) .

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
   adik (X,Y) .
   % kakek (X,Y) .
   % ibu (X,Y) .
   % cucu (X, Y) . 
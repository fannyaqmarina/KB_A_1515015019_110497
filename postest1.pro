predicates
  nondeterm buku_yang_ada(symbol,symbol)
  nondeterm kategori(symbol)
  nondeterm judul(symbol) 
  nondeterm yang_dipinjam(symbol,symbol)
  nondeterm stock(symbol)

clauses
  buku_yang_ada(Kategori,Judul):-kategori(Kategori),
	judul(Judul),
   	stock(Judul),not(yang_dipinjam(Kategori,Judul)).

  kategori(majalah).
  kategori(astronomi).
  kategori(novel).
  kategori(biografi).
  kategori(komik).

  judul(gadis).
  judul(rindu).
  judul(hujan).
  judul(conan).
  judul(hidayah).
  judul(bulan).
  judul(matahari).

  yang_dipinjam(komik,conan).
  yang_dipinjam(majalah,hidayah).
  yang_dipinjam(novel,rindu).

  stock(gadis).
  stock(rindu).
  stock(hujan).
  stock(kamu).
  stock(tertawa).

goal
  buku_yang_ada(Kategori,Judul).

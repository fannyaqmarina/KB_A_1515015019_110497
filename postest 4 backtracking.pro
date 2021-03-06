/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH04E07.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  buy_car(symbol,symbol) - determ (i,o)%predikat membeli mobil memiliki prameter symbol dan symbol
  car(symbol,symbol,integer) - nondeterm (i,o,o)%mobil memiliki parameter symbol, symbol dan integer
  colors(symbol,symbol) - nondeterm (i,i)%warna memiliki paramerer symbol dan symbol

clauses
  buy_car(Model,Color):-
	car(Model,Color,Price),
	colors(Color,sexy),!,
	Price < 25000.%membeli mobil yang memiliki model dan warna jika mobil tersebut memiliki model warna dan harga dan warnanya merupakan warna yang seksi dan harganya kurang dari 25000 dan rule ini tidak mengizinkan untuk mencari kembali rule rule yang berkaitan 

  car(maserati,green,25000). %terdapat mobil dengan merk maserati berwarna hijau harganya 25000
  car(corvette,black,24000).%terdapat mobil dengan merk corvette warna hitam harganya 24000
  car(corvette,red,26000).%terdapat juga mobil corvette warna merah dengan harga 26000
  /* tambahan*/car(corvette,red,24000).%tambahan dari saya untuk membuktikan pengaruh
  car(porsche,red,24000).%terdapat juga mobil porsche dengan warna merah dan harganya adalah 24000

  colors(red,sexy).%warna merah merupakan warna sexy
  colors(black,mean).%warna hitam merupakan warna mean 
  colors(green,preppy).%warna hijau merupakan warna preepy

goal
  buy_car(corvette,Y).
/* penjelasan backtrack
pada goals kita diminta menampilkan Y dimana modelnya adalah corvette nah pertama tama kita melakukan mencocokkan terlebih atau menguninifikasi dahulu corvette memiliki warna apa saat dilihat corvette memiliki warna hitam
oke selanjutnya kita ke pernyataan selanjutnya warna tersebut merupakan warna sexy karena hitam bukan lah warna sexy melainkan warna mean maka kembali ke rules mobil corvette ada yang warna merah dan harganya 26000 oke kita ambil
kemudian apakah merah merupakan warna sexy maka ya jawaban betul saat kita ke rule selanjutnya maka kita akan bertemu dengan cut dimana akhirnya hasil nanti yang akan kita teliti tidak akan berulang lagi atau tidak backtrack lagi 
saat kita membandingkan bahwa variable tadi tidak dibawah 25000 maka hasil yang di dapat no solution karena itu tadi jadi intinya saat cut itu terjadi variabel variabel sebelumnya di tahan untuk ke wariable selanjutnya namun tidak melakukan 
backtrack lagi jadi seandainya saya kasih tambahan seperti rule pada car padahal da corvette warna merah dan harga dibawah 24000 namun karena saat pelacakan di sebelum cut yang diterima variablenya yang 26000 maka 
saat pengecekan harga yang diterima ya yang 26000 dikarenakan tidak ada pelacakan balik setelah pernyataan warna benar. sehingga hasilnya tetap no solutions.
*/
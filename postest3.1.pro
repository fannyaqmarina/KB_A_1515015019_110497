DOMAINS
kali,jumlah = integer%disini kita mendeklarasikan bahwa kali dan jumlah bertipedata integer

PREDICATES
tambahkan(jumlah,jumlah,jumlah)%memberi nama predikat tambahkan yang memiliki parameter 3 bertipe data integer
kalikan(kali,kali,kali)%begitu juga dengan kali

CLAUSES
tambahkan(X,Y,Jumlah):-Jumlah=X+Y.%pada klausa ini ada aturan bahwa pertambahan akan dilakukan dengan menambahkan 2 parameter yang ada di depan parameter yang nantinya akan diinput atau berupa variabel
kalikan(X,Y,Kali):-Kali=X*Y.%begitu juga pada perkalian akan dilakukan dengan mengkalikan 2 parameter yang menjadi variabel atau inputan

GOAL
tambahkan(32,54,Jumlah).%UNTUK mengetahui berapa penjumlahan dari 32 dan 54 maka kita panggil fungsi tambahkan maka otomatis 32 akan dijumlahkan dengan 54 sehingga hasilnya nanti 86
%kalikan(32,54,Kali). jika kita ingin menampilkan perkalian maka nanti hasilnya 32 akan dikalikan dengan 54.

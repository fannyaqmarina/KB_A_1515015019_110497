DOMAINS   
orang                          = orang(nama,alamat)%orang memiliki nama dan alamat    
nama                           = nama(pertama,kedua)%dimana nama tadi memiliki nama pertama dan kedua
alamat                         = alamat(jalan,kota_kab,propinsi)%dan alamat tadi memiliki jalan, kota, dan propinsi
jalan                          = jalan(nama_jalan,nomor)   %dan jalan tadi memiliki nama jalan dan nomor rumah merupakan domain jamak campuran karena functor jamak memiliki nama jalan dan nomor dimana jalan bertipe string dan nomor bertipe integer
kota_kab,propinsi,nama_jalan  = string  %kota kabupaten, propinsi dan nama jalan bertipe string
pertama,kedua                 = symbol   %pertama dan kedia bertipe symbol
nomor                          = integer %dan integer bertipe integer.
GOAL   
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),   
P1 = orang(nama(_,fatihah),Alamat),   
P2 = orang(nama(nur,fatihah),Alamat),  
write("P1=",P1),nl,   
write("P2=",P2),nl.
/*di goals ini meminta menampilkan p1 dimana p1 adalah orang yang memiliki nama depan: diena dan belakang: fatihah dan alamatnya ada di jalan wijaya kusuma dengan nomor 12 dan di propinsi DIY nah ini merupakan domain jamak campuran yang ada.
kemudian ada juga p1 dimana orang dengan nama belakang fatihah di tampilkan dan alamat nya mengikuti yang sebelumnya.
dan p2 memiliki nama depan nur dan nama belakang fatihah alamatnya mengikuti alamat dari alamat yang telah ada juga
kemudian kita meminta menampilkan p1 sebagai p1 kemudian enter p2 baru p1 gabungan ini merupakan contoh dari data objek jamak dimana parameter parameter tadi menjadi functor dan memiliki parameter sendiri
*/
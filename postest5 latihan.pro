DOMAINS   
nama = orang(symbol,symbol) /* (Pertama , Kedua) */  /*orang merupakan functor dimana di dalam nama memiliki functor orang yang parameternya berisikan nama depan dan belakang*/ 
hari_lahir = tanggal_lahir(integer,symbol,integer) /* (Hari, Bulan, Tahun) *//*functor tanggal_lahir merupakan domain-campuran jamak */  
telepon = symbol  /* Nomor telepon *//*dan telepon bertipe simbol*/ 
 
PREDICATES   
nondeterm daftar_telepon(nama,symbol,hari_lahir)   
yang_ulang_tahun_bulan_ini   
konversi_bulan(symbol,integer)   
cek_bulan_ulang_tahun(integer,hari_lahir)   
cetak_orang(nama) 
/*daftar telepon memiliki nama, simbol dan hari lahir, dan konversi bulan memiliki simbol dan integer kemudian cetak bulan ulang tahun memiliki integer dan hari lahir
kemudian cetak orang memiliki nama*/
 
CLAUSES   
yang_ulang_tahun_bulan_ini:-  
write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl,  
write(" Nama Pertama\t\t Nama Kedua\n"),  
write("******************************************************"),nl,  
date(_, Bulan_ini, _),  /* Ambil bulan pada sistem komputer */  
daftar_telepon(Orang, _, Tanggal),  
cek_bulan_ulang_tahun(Bulan_ini, Tanggal),  
cetak_orang(Orang),  
fail. 
/*terdapat klausa yang ulang tahun di bulan ini jika maka tulisan yang di write tertulisa dan terdapat date dimana date itu mengambil sistem bulan yang ada di komputer
kemudian daftar telepon itu memiliki orang, dont care dan tanggal dan cek bulan ulang tahun memiliki bulan ini yang ada di komputer dan tanggal dan cetak orang 
memiliki orang kemudian di failkan. maksut dari file ini dia akan melacak balik ke semua pernyataan yang ada nanti dan menampilkan daftar yang ulang tahun sesuai dengan 
berapa orang yang kondisinya benar*/
 
yang_ulang_tahun_bulan_ini:-write("\n\n Tekan sembarang tombol..."),nl,  
  readchar(_). 
 /*kemudian yang ulang tahun bulan ini jika tertulis tekan sembarang tombol dan kita mengetikkan tombol sembarang agar saat di run gak bisa di close saat belum menginputkan 
 sembarang tombol*/
  cetak_orang(orang(Pertama,Kedua)):-  
  write("  ",Pertama,"\t\t\t   ",Kedua),nl. 
 /*cetak orang akan menampilkan nama orang pertama dan kedia jika tertulis nama pertama dan kedua*/
  cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):-  
  konversi_bulan(Bulan,Bulan1),  Bul = Bulan1.
  /*cek bulan ulang tahun memiliki bul, tanggal lahir yang memiliki bulan yang tercantum tanggalnya pada komputer*/
  daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)).   
  daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)).   
  daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)).   
  daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).   
  daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).   
  daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)).   
  daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)).   
  daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).   
  daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).   
  daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).   
  daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).   
  daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).   
  daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)).   
  daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)). 
 /*diatas itu merupakan daftar telepon orang no tlp dan tanggal lahir orang orang*/
  konversi_bulan(jan, 1).   
  konversi_bulan(feb, 2).   
  konversi_bulan(mar, 3).   
  konversi_bulan(apr, 4).   
  konversi_bulan(may, 5).   
  konversi_bulan(jun, 6).   
  konversi_bulan(jul, 7).   
  konversi_bulan(aug, 8).   
  konversi_bulan(sep, 9).   
  konversi_bulan(oct, 10).   
  konversi_bulan(nov, 11).   
  konversi_bulan(dec, 12). 
 /*clausa diatas yaitu mendaklarasikan konfersi bulan yang ada*/
GOAL   
    yang_ulang_tahun_bulan_ini. 
    /*goal yang ada adalah meminta untuk menampilkan bulan ini karena disistem komputer saya harii ini masih bulan maret maka yang akan tampil adalah orang yang ulang tahunnya
    dibulan maret sehingga yang akan tampil yaitu kusdiar prihatin, namun di program ini akan selalu melacak balik namun yang nilainya benar saja yang ditampilkan*/
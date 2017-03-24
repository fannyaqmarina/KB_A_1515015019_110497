DOMAINS  
nama,jender,pekerjaan,benda,alasan,zat = symbol%disini kita mengidentifikasi bahwa nama,jender,pekerjaan, benda,alasan dan zat bertipe symbol 
umur=integer %umur bernilai integer
 
PREDICATES   
nondeterm orang(nama, umur, jender, pekerjaan)%predikat orang memiliki parameter nama,umur,jender dan pekerjaan   
nondeterm selingkuh(nama, nama)%selingkuh juga memiliki parameter nama,nama 
terbunuh_dengan(nama, benda)%terbunuh dengan berparameter nama,benda
terbunuh(nama)%yang tebunuh berparameter nama
nondeterm pembunuh(nama)%pembunuh sendiri pun memiliki parameter nama   
motif(alasan)   %motif berparameter alasan
ternodai(nama, zat)  %ternodai berparameter nama,zat
milik(nama, benda)   %milik berparameter nama, benda
nondeterm cara_kerja_mirip(benda, benda)   %cara_kerja_mirip berparameter benda dengan benda
nondeterm kemungkinan_milik(nama, benda)   %kemungkinan pun memiliki parameter nama, benda
nondeterm dicurigai(nama) %yang dicurigai mengandung nama
 
CLAUSES
 orang(budi,55,m,tukang_kayu). %terdapat aturan dimana budi berumur 55 tahun bergender man atau lelaku dan pekerjaan nya tukang kayu
 orang(aldi,25,m,pemain_sepak_bola).   %kemudian ada juga aldi si pemain bola dengan umur 25 tahun dia merangkap pekerjaan menjadu tukang jagal juga gendernya man
 orang(aldi,25,m,tukang_jagal).   
 orang(joni,25,m,pencopet). %dan ada juga joni berumur 25 tahun gender man dan perkerjaannya seorang pencopet
 
  selingkuh(ina,joni).   %ina selingkuh dengan joni, ina juga selingkuh dengan budi
  selingkuh(ina,budi).   
  selingkuh(siti,joni). %sedangkan siti selingkuh dengan joni
 
  terbunuh_dengan(siti,pentungan). %siti terbunuh, siti terbunuh karena pentungan 
  terbunuh(siti). 
 
  motif(uang). %ada beberapa motif pembunuhan siti itu tadi ada karena uang,cemburu, dan dendam  
  motif(cemburu).   
  motif(dendam). 
 
  ternodai(budi, darah). %budi ternodai darah, begitu juga siti juga ternodai darah karena siti terbunuh
  ternodai(siti, darah).   
  ternodai(aldi, lumpur).   %sedangkan aldi ternodai lumpur sendangkan joni dan ina ternodai coklat
  ternodai(joni, coklat).   
  ternodai(ina, coklat). 
 
  milik(budi,kaki_palsu).   %si budi ini tadi dia memiliki kaki palsu sedangkan joni memiliki pistol pada dirinya
  milik(joni,pistol). 
 
  cara_kerja_mirip(kaki_palsu, pentungan).   %cara kerja kaki palsu itupun sebenarnya mirip dengan penntungan
  cara_kerja_mirip(balok, pentungan).   %balok pun juga cara kerja atau kegunaanya bisa dikatergorikan sebagai pentungan
  cara_kerja_mirip(gunting, pisau).  %guntingpun cara kerjanya bisa seperti pisau atau benda tajam
  cara_kerja_mirip(sepatu_bola, pentungan). %sedangkan sepatu bola pun bisa dikategorikan sebagai pentungan. orang yang memiliki benda mirip dengan bbagaimana siti terbunuh patut dicurgai
 
  kemungkinan_milik(X,sepatu_bola):-  %kemungkinan sepatu bola dimiliki oleh seseorang jika orang tersebut bekerja sebagai pemain sepakbola
  orang(X,_,_,pemain_sepak_bola).   
  kemungkinan_milik(X,gunting):-  %kemungkinan juga guntung dimiliki oleh seseorang yang bekerja di salon tetapi diatas tadi tidak tercantum bahwa ada orang yang berprofesi sebagai tukang salon.
  orang(X,_,_,pekerja_salon).   
  kemungkinan_milik(X,Benda):-  %kemungkinan juga suatu benda dimiliki seseorang jika benda tersebut dimiliki oleh seseorang
  milik(X,Benda). 
 
  dicurigai(X):-  
  terbunuh_dengan(siti,Senjata) , 
  cara_kerja_mirip(Benda,Senjata) ,  
  kemungkinan_milik(X,Benda).%seseorang patutt dicurigai jika ketika siti terbunuh karena sebuah senjata dan seseorang itu memiliki benda yang cara kerjanya mirip suatu senjata dan benda tersebut kemungkinan punya seseorang maka orang itu patut dicurigai bisa saja aldi dan budi 
 
  dicurigai(X):-  %seseorang juga patut dicurigai jika ada motif cemburu dan orang tersebut pria dan orang tersebut merupakan selingkuhan siti maka bisa saja ini joni namun joni tidak memiliki benda yang dapat membuat ina terbunuh
  motif(cemburu),  
  orang(X,_,m,_),  
  selingkuh(siti,X).  
 
  dicurigai(X):- %seseorang bisa patut dicurigai jika ada motif cemburu dan orang tersebut bergender wanita dan orang tersebut selingkuh dengan laki laki dan siti juga selingkuh dengan lelaki itu 
  motif(cemburu),  %bisa saja si ina
  orang(X,_,f,_),  %tapi karena di rule orang tidak ada orang berjender wanita maka ina terbebas dari curigaan
  selingkuh(X,Lakilaki),  
  selingkuh(siti,Lakilaki). 
 
  dicurigai(X):-  %pembunuh bisa saja membunuh karena motif uang dan orang tersebut adalah pencopet
  motif(uang),  
  orang(X,_,_,pencopet). 
 
  pembunuh(Pembunuh):-  %pembunuh adalah orang yang terdeklarasi diatas dan yang terbunuh itu siti dan 
  orang(Pembunuh,_,_,_),  
  terbunuh(Terbunuh),  
  Terbunuh <> Pembunuh,%dan yang terbunuh tidak sama dengan pembunuh maksutnya dia tidak bunuh diri
   dicurigai(Pembunuh),  %dan nama orang tersebut masuk di rule dicurigai
   ternodai(Pembunuh,Zat),  %kemudian pembunuh dan terbunuh ternodai dengan dzat yang sama pada rule ternodai budi memiliki noda yang sama dengan siti, nama budi juga masuk dalam rule dicurigai hal ini bisa saja 
   ternodai(Terbunuh,Zat). 
 
GOAL   
pembunuh(X). %nama yang muncul adalah budi. 
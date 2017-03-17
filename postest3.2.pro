 domains
%mk = mata kuliah, m = mahasiswa, n = nilai
mk,m,n=symbol %disini kita mendeklarasikan bahwa mk,m,dan n merupakan symbol
predicates
nondeterm n(m,n)%nilai mempunyai parameter yaitu mahasiswa dan nilai itu sendiri
nondeterm diambil(mk,m,m,m,m,m)%diambil mempunyai 6 parameter dimana parameter pertama merupakan matakuliah dan parameter yang lain merupakan mahasiswa
nondeterm nm(m,m,m,m,m,n,n,n,n,n)%ada pula nilai mahasiswa dimana parameternya ada 10 5 diawal parameter adalah nama nama mahasiswa dan 5 lainnya merupakan nilai mahasiswa sesuai dengan urutan mahasiswa yang dideklasikan
nondeterm lulus(m) %lulus memiliki parameter mahasiswa
nondeterm taklulus(m)%taklulus memiliki parameter mahasiswa juga

clauses
diambil(intelejensi_buatan,irfan,komeng,dati,fatima,maspion).%terdapat aturan dimana intelejensi diambil oleh parameter yang mengikuti seperti irfan, komeng dkk
diambil(pde,ricky,embang,salmin,vina,sondang).%terdapat aturan dimana pde juga diambil oleh ricky, embang dkk 
diambil(sistem_operasi,pamuji,luki,sadek,yusida,eka).%dan matakuliah so diambil oleh pamuji dkk
nm(irfan,komeng,dati,fatima,maspion,a,d,c,b,c).%untuk nilai irfan dkk yaitu yang mengambil intelejensi yaitu nilainya e,a dan yang mengikuti
nm(ricky,embang,salmin,vina,sondang,e,a,d,b,c).%sama seperti diatas
nm(pamuji,luki,sadek,yusida,eka,d,e,b,a,a).%sama seperti diatas
n(M,N):-nm(M,_,_,_,_,N,_,_,_,_);nm(_,M,_,_,_,_,N,_,_,_);
nm(_,_,M,_,_,_,_,N,_,_);nm(_,_,_,M,_,_,_,_,N,_);nm(_,_,_,_,M,_,_,_,_,N).
%klausa yang ada diatas ini merupakan fakta yang digunakan untuk mencari nilai seluruh nilai mahasiswa dimana nilai memiliki parameter mahasiswa dan nilai jika nilai mahaiswa fakta tersebut dimana menggunakan operan or agar semua bisa tampil
%diatas itu diberitahukan ika nilai mahasiswa(M,_,_,_,_,N,_,_,_,_) maksutnya nanti yang ditampilkan adalah nilai dari mahasiswa yang variabelnya disebut dan sedang diaktifkan atau seterusnya.
lulus(M):-n(M,N),N=a;n(M,N),N=b;n(M,N),N=c.%ada rules mahasiswa dikatakan lulus jika nilai mahasiswa tersebut adalah a atau nilai nya b atau nilainya c
taklulus(M):-n(M,_),not(lulus(M)).%dan mahasiswa dikatakan tidak lulus jika selain yang disebutkan pada kriteria lulus.

goal
write("Mahasiswa yang mengambil matkul Intelejensi Buatan:"),nl,diambil(intelejensi_buatan,M1,M2,M3,M4,M5);
nl,write("Mahasiswa yang tidak lulus:"),nl,taklulus(Mahasiswa);
nl,write("Mahasiswa yang lulus:"),nl,lulus(Mahasiswa);
nl,write("Seluruh Mata Kuliah:"),nl,diambil(Matakuliah,_,_,_,_,_);
nl,write("Seluruh Mahasiswa:"),nl,diambil(_,M1,M2,M3,M4,M5).
%pada baris satu program akan menulis kata kata yang ada di dalam fungsi write kemudian nl yang sejenis memberi enter kemudian mengambil nilai dari fakta diambil yang telah dibuat pada goals diatas mencari penyataan yang lulus intelejensi buatan
%kemudian baris selanjutnya pernyataan meng or kan juga mahasiswa yang tak lulus atau mahasiswa yang lulus atau matakuliah yang diambil atau menampilkan seluruh mahasiswa sehingga 
%hasilnya akan menampilkan keseluruhan dan penggabungan nya menggunakan operan or. di program itu nanti akan menampilkan semua mahasiswa yang mengambil matauliah intelejensi buatan dengan parameter intelejensi buatan yang dipanggil pertama mengikuti nama mahasiswanya
%kemudian menampilkan mahasiswa yang lulus serta menampilkan mahasiswa yang tidak luluss lalu menampilkan juga seluruh matakuliah yang ada dengan menggunakan parameter kemuadian menampilakn keseluruhan mahasiswa dengan tidak mengaktifkan variabel pada parameter pertama pada fungsi diambil.
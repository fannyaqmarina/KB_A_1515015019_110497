/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer) - procedure (i,o)

clauses
  length_of([], 0)./*2. target kita adalah bagaimana list itu nanti bernilai [] dan melihat hasil akhirnnya disaat L itu 0. karena list kita masih ada 1,2,3 makanya saat ini klausa ini kita pending dahulu
  6. kemudian kita check lagi disini apakah length_of list nya sudah [] ternyata belum maka masih kita pending dulu 
  10. kita kembali ke klausa ini dan nilai length_of nya masih bernilai ([3],2) dan belum [] 
  14 saat kita kembali kesini saat kita lihat ya saat ini lenght_of nya telah menjadi ([],dan Lnya 3)*/
  
  length_of([_|T],L):-/*3. untuk saat ini pada klausa disamping yang kita ketahui adalah head nya 1 dan T nya 2,3,[],dan L masih 0
  7. sampai sini kita memisahkan head dan tailnya untuk tahapan ini kita ketahui bahwa headnya adalah 2 dan Tnya 3,[] dan L telah bernilai 1 
  11. disini kita memisahkan lagi head dan tailnya sehingga saat ini head nya 3 dan T nya [] Dan L nya 2
  */
	length_of(T,TailLength), /*4. dan Length_of nya saat ini (2,3,[] dan tailenght nya masih 0 karena pada klausa yang kita pending tadi L atau Tailenght itu masih bernilai 0
	8. length_of saat ini menjadi ([3], dan tailength bernilai 1 juga karena pada dasarnya L dan TailLength itu sama
	12. kemudian Length_of nya ([],2)*/
	L = TailLength + 1. % 5. dan nilai Lenght tadi yang awalnya dia bernilai 0 pada klausa ini kita tambah satu sehingga taillenght tadi bernilai satu
	/*9. dan tailength nya pada tahap kedua ini 1+1 sehingga saat ini L atau TailLenght ini menjadi 2
	13. kemudian nilai L samadengan 2+1 menjadi tiga*/ 

goal
  length_of([1,2,3],L)./*1. pada goals ini kita mencari nilai dari L dimana dengan list [1,2,3] untuk mencari nilai dari L ini tadi kita pergi ke klausa terlebih dahulu
  sehingga saat kita running goals nya menjadi 3 solusi*/

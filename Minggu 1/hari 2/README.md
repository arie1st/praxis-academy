Hari kedua

tipe variabel
var adalah tipe variabel yang dapat berubah ubah
final adalah tipe variabel yang hanya bisa sekali di ubah (saat masi dlm constructor)
const adalah tipe variabel yang tidak dapat diubah sama sekali

type number di dart
int
double (sama dengan float di php)

String interpolation
contoh
var s ='internet';
assert (${s.toUpperCase()}== 'INTERNET');

Penggabungan string
contoh
var s1 = 'menggabungkan' + ' dua string';

Multiline string (menggunakan 3 tanda kutip)
contoh 
var s1 = '''contoh mutiline
string'''

var s2 ='''
contoh multiline
string'''


raw string adalah string yang tidak memproses perintah2 atau format yang dimasukkan ke dalam string
contoh
var s = r'cetak kalimat \n lalu enter'
maka \n tidak berpengaruh pada raw string

Boolean paa dart menggunakan tipe data bool

Array pada dart menggunakan tipe data list

list juga bisa dibuat constant
contoh
var constantList = const [1, 2, 3];

spread operator (...) digunakan untuk memasukan elemen sebuah list ke dalam list yang lain ( penggabungan)
contoh
var list1 = [1,2,3];
var list2 = [0,...list1];
jika list1 bernilai null, maka untuk menghindari error, tambahkan null-aware spread operator (...?)
contoh
var list2 = [0,...?list1];

collection if & collection for dapat digunakan padalist sehingga isi dari list menjadi dinamis
contoh
var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (promoActive) 'Outlet'
];

contoh 2
var listOfInts = [1, 2, 3];
var listOfStrings = [
  '#0',
  for (var i in listOfInts) '#$i'
];
assert(listOfStrings[1] == '#1');


sets adalah sekumpulan data , tidak ada indexnya
contoh
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

untuk membuat sets kosong dapat ditulis sperti berikut
var names = <String>{};

untuk menambah data ke sets dapat menggunakan method add() atau addAll() sbb:
var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);



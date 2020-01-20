install dart sdk
tambahkan path instalasi dart di environment variables windows
install android studio
install stagehand
tambahkan path instalasi stagehand di environment variables windows

buka console windows, arahkan pada folder project yang diinginkan
lalu eksekusi perintah D:\Direktori project>stagehand console-full

buka android studio
buat empty project, lalu buka folder project

pada android studio tambahkan plugin language dart
set di android studio pada file > setting path dart sdk
check update dart dan pilih project yg menggunakan dart
lalu apply setting

kerjakan coding pada folder bin>main.dart

kerjakan code pada main() function
void main() {
  print('Hello, World!');
}

untuk fungsi wajib menentukan tipe function jika tidak maka defaultnya adalah void dimana tidak mengembalikan nilai
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}


untuk membei komen bisa  menggunakan double slice
// komentar

atau
/* komentar */







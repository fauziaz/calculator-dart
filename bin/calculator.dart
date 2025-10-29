import 'dart:io';

void main() {
  while (true) {
    print("\n=== Kalkulator Dart ===\n");

    stdout.write("Masukkan angka pertama: ");
    double angka1 = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan angka kedua: ");
    double angka2 = double.parse(stdin.readLineSync()!);

    stdout.write("Pilih operasi (+, -, *, /, %): ");
    String? operasi = stdin.readLineSync();

    double hasil;

    if (operasi == "+") {
      hasil = angka1 + angka2;
      print("Hasil: $angka1 + $angka2 = $hasil");
    } else if (operasi == "-") {
      hasil = angka1 - angka2;
      print("Hasil: $angka1 - $angka2 = $hasil");
    } else if (operasi == "*") {
      hasil = angka1 * angka2;
      print("Hasil: $angka1 × $angka2 = $hasil");
    } else if (operasi == "/") {
      if (angka2 == 0) {
        print("Error: Tidak bisa dibagi dengan nol!");
        continue;
      }
      hasil = angka1 / angka2;
      print("Hasil: $angka1 ÷ $angka2 = $hasil");
    } else if (operasi == "%") {
      hasil = angka1 % angka2;
      print("Hasil: $angka1 % $angka2 = $hasil");
    } else {
      print("Operasi tidak dikenal!");
      continue;
    }

    stdout.write("\nMau menghitung lagi? (yes/no): ");
    String jawab = stdin.readLineSync()!.trim().toLowerCase();

    if (jawab == 'y' || jawab == 'yes') {
      continue;
    } else {
      print("\nSelamat Tinggal!");
      break;
    }
  }
}
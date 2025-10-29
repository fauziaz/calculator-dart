import 'dart:io';

class Operation {
  late int nilaiAwal, nilaiAkhir;

  Operation(int nilaiAwal, int nilaiAkhir) {
    this.nilaiAwal = nilaiAwal;
    this.nilaiAkhir = nilaiAkhir;
  }

  tambah(int input1, int input2) {
    return input1 + input2;
  }

  kurang(int input1, int input2) {
    return input1 - input2;
  }

  kali(int input1, int input2) {
    return input1 * input2;
  }

  bagi(int input1, int input2) {
    return input1 / input2;
  }

  modulus(int input1, int input2) {
    return input1 % input2;
  }
}

void kalkulator() {
  print("Kalkulator sederhana\n");

  stdout.write("Masukkan angka pertama: ");
  int? angka1 = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua: ");
  int? angka2 = int.parse(stdin.readLineSync()!);

  stdout.write(
      "Pilih operasi. Opsinya ada tambah(+), kurang(-), kali(*), bagi(/), modulus(%): ");
  String? choice = stdin.readLineSync()!.toLowerCase();

  Operation operation = new Operation(10, 20);

  // clear terminal
  if (Platform.isWindows) {
    print(Process.runSync("cls", [], runInShell: true).stdout);
  } else {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }

  switch (choice) {
    case "+":
      print("Hasilnya: ${operation.tambah(angka1, angka2)}");
      return;

    case "-":
      print("Hasilnya: ${operation.kurang(angka1, angka2)}");
      return;

    case "*":
      print("Hasilnya: ${operation.kali(angka1, angka2)}");
      return;

    case "/":
      print("Hasilnya: ${operation.bagi(angka1, angka2)}");
      return;

    case "%":
      print("Hasilnya: ${operation.modulus(angka1, angka2)}");
      return;

    default:
      print("Maaf, operator yang anda masukkan tidak valid!");
      return;
  }
}

void main(List<String> args) {
  kalkulator();

  stdout.write("\nUlang lagi? (yes or no) : ");
  String? isRepeat = stdin.readLineSync()!.toLowerCase();

  isRepeat == "yes"
      ? kalkulator()
      : print("\nTerima kasih telah memakai program kalkulator sederhana ini!");
}
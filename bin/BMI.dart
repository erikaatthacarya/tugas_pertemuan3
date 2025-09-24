import 'dart:io';

void main() {
  print("=== Program Hitung BMI ===");

  List<String> history = [];
  String lanjut = 'y';

  while (lanjut.toLowerCase() == 'y') {
    stdout.write("Masukkan berat badan (kg): ");
    double berat = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan tinggi badan (Cm): ");
    double tinggiCm = double.parse(stdin.readLineSync()!);
    double tinggiM = tinggiCm / 100;
    
    double bmi = berat / (tinggiM * tinggiM);

    String kategori;
    if (bmi < 18.5) {
      kategori = "Kurus";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      kategori = "Normal";
    } else if (bmi >= 25 && bmi < 29.9) {
      kategori = "Gemuk";
    } else {
      kategori = "Obesitas";
    }

    print("BMI Anda: ${bmi.toStringAsFixed(2)}");
    print("Kategori: $kategori\n");

    history.add("Berat: ${berat}kg, Tinggi: ${tinggiCm}cm, BMI: ${bmi.toStringAsFixed(2)}, Kategori: $kategori");

    stdout.write("Hitung lagi? (y/n): ");
    lanjut = stdin.readLineSync()!;
  }

  print("\n=== History Perhitungan BMI ===");
  if (history.isEmpty) {
    print("Belum ada perhitungan.");
  } else {
    for (int i = 0; i < history.length; i++) {
      print("${i + 1}. ${history[i]}");
    }
  }
}
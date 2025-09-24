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
    
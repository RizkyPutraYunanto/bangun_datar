import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PersegiControler extends GetxController{
  int sisi = 0;
  final hasil ="".obs;

  void hitungLuas() {
    int hitung = sisi * sisi;
    hasil.value = "Hasil \n" "Perhitungan Luas Persegi dari sisi $sisi X $sisi\n adalah $hitung";
  }
  void hitungkeliling(){
    int hitung = sisi + sisi + sisi +sisi;
    hasil.value = "Hasil \n" "Perhitungan Keliling Persegi dari sisi $sisi + $sisi + $sisi + $sisi\n adalah $hitung";
  }
}
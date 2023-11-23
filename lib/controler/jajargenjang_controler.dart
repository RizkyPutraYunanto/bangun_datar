import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LingkaranControler extends GetxController{
  int a = 0;
  int t = 0;
  final hasil ="".obs;

  void hitungLuas() {
    num hitung = a * t;
    hasil.value = "Hasil \n" "Perhitungan Luas Jajar Genjang dari sisi $a X $t\n adalah $hitung";
  }
  void hitungkeliling(){
    num hitung = 2 * (a + t);
    hasil.value = "Hasil \n" "Perhitungan Keliling Jajar Genjang dari sisi 2 * $a + $t\n adalah $hitung";
  }
}
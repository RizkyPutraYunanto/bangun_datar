import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PersegiPanjangControler extends GetxController{
  int p = 0;
  int l = 0;
  final hasil ="".obs;

  void hitungLuas() {
    num hitung = p * l;
    hasil.value = "Hasil \n" "Perhitungan Luas Jajar Genjang dari sisi $p X $l\n adalah $hitung";
  }
  void hitungkeliling(){
    num hitung = p+p+l+l;
    hasil.value = "Hasil \n" "Perhitungan Keliling Jajar Genjang dari sisi $p + $p + $l + $l\n adalah $hitung";
  }
}
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SegitigaControler extends GetxController{
  int a = 0;
  int t = 0;
  final hasil ="".obs;

  void hitungLuas() {
    num hitung = a * t * 1/2;
    hasil.value = "Hasil \n" "Perhitungan Luas Segitiga dari sisi $a X $t X 1/2 \n adalah $hitung";
  }
  void hitungkeliling(){
    num hitung = a*3;
    hasil.value = "Hasil \n" "Perhitungan Keliling Segitiga dari sisi $a X 3 \n adalah $hitung";
  }
}
import 'package:bangun_datar_kelas_c/controler/jajargenjang_controler.dart';
import 'package:bangun_datar_kelas_c/controler/persegi_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({Key? key}) : super(key: key);

  final LingkaranControler _jajargenjang_controler = Get.put(LingkaranControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "persegi page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("assets/persegipanjang.png",
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("PersegiPanjang"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(5)),
            child: Text(
                " bangun datar dua dimensi yang jika dilihat dari bentuknya hampir seperti segi empat yang memiliki dua rusuk sejajar serta saling berhadapan."
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: TextFormField(
                      onChanged: (Value) {
                        _jajargenjang_controler.a = int.parse(Value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Alas",
                        hintText: "Masukkan Alas",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: TextFormField(
                      onChanged: (Value) {
                        _jajargenjang_controler.t = int.parse(Value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Tinggi",
                        hintText: "Masukkan Tinggi",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _jajargenjang_controler.hitungLuas();
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.black,),
                        child: Text("Hitung Luas")
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _jajargenjang_controler.hitungkeliling();
                        }, child: Text("Hitung Keliling")
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(5)),


            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Hasil\n"),
                Obx(() => Text(_jajargenjang_controler.hasil.value)),
                Text("\n\n Terima Kasih"),
                Text("============================")
              ],
            ),

          ),
        ],
      ),
    );
  }
}
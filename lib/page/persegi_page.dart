import 'package:bangun_datar_kelas_c/controler/persegi_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);

  final PersegiControler _PersegiControler=Get.put(PersegiControler());

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
          Image.asset("assets/persegi.png",
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Persegi"),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5)),
              child: Text(
               "turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)."
              ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical:10),
                child: TextFormField(
                  onChanged: (Value){
                    _PersegiControler.sisi = int.parse(Value);
                  },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
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
                        onPressed: (){
                          _PersegiControler.hitungLuas();
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.black,),
                        child: Text ("Hitung Luas")
                    ),
                    ElevatedButton(
                        onPressed: (){
                          _PersegiControler.hitungkeliling();
                        }, child: Text ("Hitung Keliling")
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
                Obx(() => Text(_PersegiControler.hasil.value)),
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
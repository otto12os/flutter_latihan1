import 'package:flutter/material.dart';
import 'package:flutter_latihan1/gambar_screen.dart';
import 'package:flutter_latihan1/kalkulator_screen.dart';
import 'package:flutter_latihan1/nilai_akhir.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // awal navigasi

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => KalkulatorScreen(),
                ),
              );

              //akhir navigasi
            },
            child: Text('Kalkulator'),
          ),
          ElevatedButton(
            onPressed: () {
              // Awal

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => GambarScreen(),
                ),

                // Akhir
              );
            },
            child: Text('Gambar screen'),
          ),
          ElevatedButton(
            onPressed: () {
              // awal

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => NilaiAkhir(),
                ),
              );
            },
            child: Text('Nilai Akhir'),
          ),
        ],
      ),
    );
  }
}

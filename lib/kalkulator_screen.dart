import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  TextEditingController angka1controller = TextEditingController();
  String tampilHasil = "hasil kosong";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          TextField(
            controller: angka1controller,
          ),
          ElevatedButton(
              onPressed: () {
                print(angka1controller.text);
                setState(() {
                  tampilHasil = angka1controller.text;
                });
                print(tampilHasil);
              },
              child: Text('Tampil')),
          Text(tampilHasil),
        ],
      ),
    );
  }
}

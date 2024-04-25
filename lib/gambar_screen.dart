import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({super.key});

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  String? namaHewan;
  final player = AudioPlayer();

  gantiNama(String inputNama) {
    setState(() {
      namaHewan = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaHewan ?? "gambar kosong"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: () async {
              print("Kucing");
              gantiNama("Kucing");
              await player.setAsset("aset_media/suara/cat.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset("aset_media/gambar/cat.png"),
            ),
          ),
          GestureDetector(
            onTap: () async {
              print("Sapi");
              gantiNama("Sapi");
              await player.setAsset("aset_media/suara/cow.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset("aset_media/gambar/cow.png"),
            ),
          ),
          GestureDetector(
            onTap: () async {
              print("Bebek");
              gantiNama("Bebek");
              await player.setAsset("aset_media/suara/duck.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset("aset_media/gambar/duck.png"),
            ),
          ),
          Card(),
          Card(),
          Card(),
        ],
      ),
    );
  }
}

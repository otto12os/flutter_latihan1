import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 2'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Text('Bernz'),
          Text('Zein'),
          Text('Reinzy'),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Halo'),
            ),
          )
        ],
      ),
    );
  }
}

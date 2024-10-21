import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Page'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Kotak berwarna di background
            Container(
              width: 300,
              height: 300,
              color: Colors.blueAccent, // Warna background
            ),
            // Kotak kecil di atas kotak besar
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green, // Warna hijau untuk kotak kecil
              ),
            ),
            // Teks di tengah-tengah stack
            Positioned(
              child: Text(
                'Centered Text',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Tombol di bagian bawah
            Positioned(
              bottom: 20,
              child: ElevatedButton(
                onPressed: () {
                  print('Button Pressed');
                },
                child: Text('Click Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

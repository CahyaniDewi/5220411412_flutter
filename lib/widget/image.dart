import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Image Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Gambar dari Internet:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            // Menampilkan gambar dari internet menggunakan Image.network
            Image.network(
              'https://asani.co.id/wp-content/uploads/2023/04/spek-laptop-untuk-coding.webp',
              width: 300,
              height: 200,
              fit: BoxFit.cover, // Mengatur bagaimana gambar akan menyesuaikan kotaknya
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                }
              },
              errorBuilder: (context, error, stackTrace) {
                return Text('Failed to load image'); // Menampilkan teks jika terjadi kesalahan
              },
            ),
          ],
        ),
      ),
    );
  }
}

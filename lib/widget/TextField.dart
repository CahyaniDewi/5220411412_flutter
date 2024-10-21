import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldExamplePageState createState() => _TextFieldExamplePageState();
}

class _TextFieldExamplePageState extends State<TextFieldPage> {
  // Controller untuk menangani input TextField
  final TextEditingController _controller = TextEditingController();
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TextField biasa dengan controller
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter some text',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  _inputText = text; // Menyimpan input teks untuk ditampilkan
                });
              },
            ),
            SizedBox(height: 20),
            // Menampilkan input yang diambil dari TextField
            Text(
              'You typed: $_inputText',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // TextField dengan properti tambahan seperti hint dan icon
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            // TextField dengan pengaturan obfuscation (password input)
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your password',
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true, // Menyembunyikan teks (untuk password)
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aksi tombol untuk mendapatkan teks dari TextField
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text('You typed: ${_controller.text}'),
                  ),
                );
              },
              child: Text('Show Input'),
            ),
          ],
        ),
      ),
    );
  }
}

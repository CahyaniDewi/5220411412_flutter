import 'package:flutter/material.dart';

class TextFieldFormPage extends StatefulWidget {
  @override
  _TextFieldFormPageState createState() => _TextFieldFormPageState();
}

class _TextFieldFormPageState extends State<TextFieldFormPage> {
  // Controllers untuk menangani input
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Form Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // TextField untuk Nama Lengkap
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama Lengkap',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            // TextField untuk No HP
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'No HP',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            // TextField untuk Email
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            // TextField untuk Password
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true, // Menyembunyikan input untuk password
            ),
            SizedBox(height: 20),
            // Tombol untuk menampilkan input dalam dialog
            ElevatedButton(
              onPressed: () {
                _showInputData(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan input dalam dialog
  void _showInputData(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Data Input'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Nama Lengkap: ${_nameController.text}'),
            Text('No HP: ${_phoneController.text}'),
            Text('Email: ${_emailController.text}'),
            Text('Password: ${_passwordController.text}'),
          ],
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}

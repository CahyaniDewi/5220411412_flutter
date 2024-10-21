import 'package:flutter_nav/widget/TextField.dart';
import 'package:flutter_nav/widget/center.dart';
import 'package:flutter_nav/widget/container.dart';
import 'package:flutter_nav/widget/icon.dart';
import 'package:flutter_nav/widget/image.dart';
import 'package:flutter_nav/widget/listview.dart';
import 'package:flutter_nav/widget/sizebox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nav/widget/stack.dart';
import 'package:flutter_nav/widget/text.dart';

class PushNavigationPage extends StatefulWidget {
  const PushNavigationPage({super.key});

  @override
  State<PushNavigationPage> createState() => _PushNavigationPageState();
}

class _PushNavigationPageState extends State<PushNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Push Navigation',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SizeboxPage(),
                  )),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
              child: const Text('Go to Size Box'),
            ),
            // const SizedBox(
            //   height: 16.0,
            // ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CenterPage(),
                  )),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey, foregroundColor: Colors.white),
              child: const Text('Go to Center Page'),
            ),

            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TextPage(),
                  )),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, foregroundColor: Colors.white),
              child: const Text('Go to Text Box'),
            ),

            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman container ketika tombol ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StackPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.white),
              child: Text('Go to Stack Page'),
            ),

            // textfield button
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman container ketika tombol ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextFieldFormPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white),
              child: Text('Go to TextField Form Page'),
            ),

            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman container ketika tombol ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, foregroundColor: Colors.white),
              child: Text('Go to Image Page'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman container ketika tombol ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white),
              child: Text('Go to Container Page'),
            ),

            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman IconPage ketika tombol ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconCollectionPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, foregroundColor: Colors.white),
              child: Text('Go to Icon Page'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewExamplePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 228, 54, 244), foregroundColor: Colors.white),
              child: Text('Go to ListView Page'),
            ),

          ],
        )),
      ),
    );
  }
}

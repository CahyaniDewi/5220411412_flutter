import 'package:flutter/material.dart';

class SizeboxPage extends StatefulWidget {
  const SizeboxPage({super.key});

  @override
  State<SizeboxPage> createState() => _SizeboxPageState();
}

class _SizeboxPageState extends State<SizeboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SizedBox',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This text and'),
                  Text('the next text have no distance'),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This text and'),
                  SizedBox(
                    width: 24.0,
                  ),
                  Text('the next text have no distance'),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.pink,
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    color: Colors.indigo,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

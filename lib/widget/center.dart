import 'package:flutter/material.dart';

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Center',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This text is in the center of the screen',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                width: 200.0,
                height: 100.0,
                color: Colors.blue,
                child: const Text(
                  'Text without center',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                  width: 200.0,
                  height: 100.0,
                  color: Colors.black,
                  child: Center(
                    child: const Text(
                      'Text center',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

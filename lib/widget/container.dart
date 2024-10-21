import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Contoh Container dengan padding dan margin
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                'Container with Padding and Margin',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            // Contoh Container dengan border dan alignment
            Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                'Centered Text',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            // Contoh Container dengan constraints dan transformasi
            Container(
              width: 200,
              height: 100,
              constraints: BoxConstraints(
                maxWidth: 250,
                minHeight: 50,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              transform: Matrix4.rotationZ(0.1),
              child: Center(
                child: Text(
                  'Transformed Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

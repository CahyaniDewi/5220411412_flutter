import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final List<String> items = List<String>.generate(10, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // GridView.count
            Text(
              'GridView.count',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200, // Membatasi tinggi GridView
              child: GridView.count(
                crossAxisCount: 2, // Jumlah kolom
                children: List.generate(6, (index) {
                  return Card(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
              ),
            ),

            Divider(), // Pemisah antara GridView

            // GridView.extent
            Text(
              'GridView.extent',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              child: GridView.extent(
                maxCrossAxisExtent: 100, // Lebar maksimum setiap item
                children: List.generate(8, (index) {
                  return Card(
                    color: Colors.greenAccent,
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                }),
              ),
            ),

            Divider(), // Pemisah antara GridView

            // GridView.builder
            Text(
              'GridView.builder',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Jumlah kolom
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.orangeAccent,
                    child: Center(
                      child: Text(
                        '${items[index]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),

            Divider(), // Pemisah antara GridView

            // GridView.custom
            Text(
              'GridView.custom',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              child: GridView.custom(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Jumlah kolom
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Card(
                      color: Colors.purpleAccent,
                      child: Center(
                        child: Text(
                          'Custom Item $index',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                  childCount: items.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

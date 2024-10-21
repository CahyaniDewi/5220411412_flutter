import 'package:flutter/material.dart';

class ListViewExamplePage extends StatefulWidget {
  @override
  _ListViewExamplePageState createState() => _ListViewExamplePageState();
}

class _ListViewExamplePageState extends State<ListViewExamplePage> {
  final List<String> items = List<String>.generate(10, (i) => 'Item $i');
  bool _isButtonEnabled = true; // Menyimpan status Switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ListView Default with Button and Switch
            Text(
              'ListView Default with Button & Switch',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Enable Buttons', style: TextStyle(fontSize: 16)),
                Switch(
                  value: _isButtonEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isButtonEnabled = value; // Update Switch state
                    });
                  },
                ),
              ],
            ),
            Container(
              height: 150, // Menentukan tinggi ListView
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                    trailing: ElevatedButton(
                      onPressed: _isButtonEnabled
                          ? () {
                              print('Map button pressed');
                            }
                          : null, // Disable button jika switch off
                      child: Text('Go'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_album),
                    title: Text('Album'),
                    trailing: ElevatedButton(
                      onPressed: _isButtonEnabled
                          ? () {
                              print('Album button pressed');
                            }
                          : null, // Disable button jika switch off
                      child: Text('Go'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    trailing: ElevatedButton(
                      onPressed: _isButtonEnabled
                          ? () {
                              print('Phone button pressed');
                            }
                          : null, // Disable button jika switch off
                      child: Text('Go'),
                    ),
                  ),
                ],
              ),
            ),

            Divider(), // Pemisah antara ListView

            // ListView.builder
            Text(
              'ListView.builder',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),

            Divider(), // Pemisah antara ListView

            // ListView.separated
            Text(
              'ListView.separated',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 150,
              child: ListView.separated(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(color: Colors.black);
                },
              ),
            ),

            Divider(), // Pemisah antara ListView

            // ListView.custom
            Text(
              'ListView.custom',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 150,
              child: ListView.custom(
                childrenDelegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ListTile(
                      title: Text('Custom Item $index'),
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

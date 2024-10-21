import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> items = List<String>.generate(10, (i) => 'Item $i');
  final List<IconData> icons = [Icons.home, Icons.phone, Icons.email, Icons.map, Icons.settings];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Header Section
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.blueAccent,
              child: Column(
                children: [
                  Text(
                    'Welcome to Our App!',
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),

            // Icon Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Quick Actions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 100, // Membatasi tinggi untuk ikon
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildIconCard(Icons.home, 'Home'),
                  _buildIconCard(Icons.phone, 'Call'),
                  _buildIconCard(Icons.email, 'Email'),
                  _buildIconCard(Icons.map, 'Map'),
                  _buildIconCard(Icons.settings, 'Settings'),
                ],
              ),
            ),

            // ListView Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Items List',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 150, // Membatasi tinggi ListView
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(icons[index % icons.length], color: Colors.blue),
                    title: Text(items[index]),
                    trailing: ElevatedButton(
                      onPressed: () {
                        print('${items[index]} button pressed');
                      },
                      child: Text('Press'),
                    ),
                  );
                },
              ),
            ),

            // GridView Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Featured',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200, // Membatasi tinggi GridView
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: List.generate(6, (index) {
                  return Card(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Icon(
                        icons[index % icons.length], // Icon diambil dari list icons
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method untuk membangun card dengan icon
  Widget _buildIconCard(IconData icon, String label) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.blue),
          SizedBox(height: 5),
          Text(label, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

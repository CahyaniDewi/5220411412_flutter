import 'package:flutter/material.dart';


class IconCollectionPage extends StatelessWidget {
  final List<IconData> icons = [
    Icons.home,
    Icons.phone,
    Icons.email,
    Icons.settings,
    Icons.camera_alt,
    Icons.alarm,
    Icons.map,
    Icons.wifi,
    Icons.bluetooth,
    Icons.favorite,
    Icons.star,
    Icons.directions_car,
    Icons.flight,
    Icons.shopping_cart,
    Icons.music_note,
    Icons.person,
    Icons.security,
    Icons.notifications,
    Icons.lightbulb,
    Icons.print,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Collection'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return IconButton(
                    icon: Icon(icons[index], size: 50),
                    onPressed: () {
                      print('${icons[index].toString()} Icon Pressed');
                    },
                  );
                },
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => IconListPage(icons: icons)),
            //     );
            //   },
            //   child: Text('Switch to List View'),
            // ),
          ],
        ),
      ),
    );
  }
}

class IconListPage extends StatelessWidget {
  final List<IconData> icons;

  IconListPage({required this.icons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon List'),
      ),
      body: ListView.builder(
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(icons[index], size: 40),
            title: Text(icons[index].toString().replaceAll("IconData(U+", "Icon ").replaceAll(")", "")),
            onTap: () {
              print('${icons[index].toString()} Icon Pressed');
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
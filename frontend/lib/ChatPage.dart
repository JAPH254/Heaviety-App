import "package:flutter/material.dart";

class Chatpage extends StatelessWidget {
  const Chatpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 6, 48, 82),
          title: Text('Heaviety Business Chat',
              style: TextStyle(color: Colors.blue.shade300)),
          actions: [
            IconButton(
                onPressed: () {
                  print('logging out');
                },
                icon: Icon(Icons.logout)),
          ],
        ),
        body: ListView(
          children: [
            Container(
              child: Text(
                'Welcome to Heaviety Business Chat',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade300,
                ),
              ),
            ),
            Container(
              child: Image.network(
                'https://images.pexels.com/photos/7974/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ));
  }
}

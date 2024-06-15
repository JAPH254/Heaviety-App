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
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your message',
                        border: OutlineInputBorder()),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.send))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, color: Colors.blue.shade300)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send, color: Colors.blue.shade300)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

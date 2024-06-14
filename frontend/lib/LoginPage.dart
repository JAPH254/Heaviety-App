import "package:flutter/material.dart";

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Button clicked');
        },
      ),
      body: Column(
        children: [
          Text(
            'we are happy you are in heaviety',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade300,
            ),
          ),
          Text(
            'Welcome and login to your account',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 70, 112, 146),
            ),
          ),
          Image.network(
            'https://images.pexels.com/photos/7974/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',
            fit: BoxFit.cover,
          ),
          Container(
            height: 100,
            width: 500,
            // color: Colors.blue.shade100,
            child: FlutterLogo(),
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/205421/pexels-photo-205421.jpeg?auto=compress&cs=tinysrgb&w=600'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

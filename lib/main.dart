import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calling Bell App"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Moideen Nazaif VM"),
              accountEmail: Text("nazaifmoid@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://secure.meetupstatic.com/photos/member/8/5/b/4/highres_269014228.jpeg"),
              ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Nazaif Moideen",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("iOS Developer"),
              trailing: Icon(Icons.edit),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Nazaif Moideen",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("Flutter Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.near_me),
      ),
    );
  }
}

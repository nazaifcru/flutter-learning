import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _myText = "Change my Future";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _myText = _controller.text;
          setState(() {});
        },
        child: Icon(Icons.near_me),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Image.asset("assets/img.jpeg"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(_myText,
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                      hintText: "with initial",
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:callingbell/name_card_widget.dart';
import 'package:callingbell/drawer.dart';

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
      drawer: MyDrawer(),
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
            child: NameCardWidget(myText: _myText, controller: _controller),
          ),
        ),
      ),
    );
  }
}

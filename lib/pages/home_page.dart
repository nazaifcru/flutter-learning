import 'package:flutter/material.dart';
import 'package:callingbell/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var url = "https://api.github.com/users";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    print(res.body);
    data = jsonDecode(res.body);
    setState(() {});
  }

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

        },
        child: Icon(Icons.near_me),
      ),
      body: data != null ? ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index]["login"]),
              subtitle: Text("ID:${data[index]["id"]}"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  data[index]["avatar_url"]
                ),
              )
            );
          },
      itemCount: data.length,)
          : Center(
        child: CircularProgressIndicator(),
      )
    );
  }
}

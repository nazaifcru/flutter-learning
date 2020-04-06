import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.green
  ),
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
      body: Center(
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.yellow]
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10
              )
            ]
          ),
          child: Text("I'm Awesome developer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          alignment: Alignment.center,
        )
      ),

    );
  }
}

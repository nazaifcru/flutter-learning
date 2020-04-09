import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required String myText,
    @required TextEditingController controller,
  }) : _myText = myText, _controller = controller, super(key: key);

  final String _myText;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
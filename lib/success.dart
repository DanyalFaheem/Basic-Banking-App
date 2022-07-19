import 'package:flutter/material.dart';

class Successful extends StatelessWidget {
  const Successful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Transaction Successful!',
            style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.check,
            size: 50,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}

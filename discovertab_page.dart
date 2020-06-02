import 'package:flutter/material.dart';

class DiscoverTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:70.0),
            child: Center(child: Text('Second Tab')),
          )
        ],
      ),
    );
  }
}
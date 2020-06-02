import 'package:flutter/material.dart';

class FavoriteTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:70.0),
            child: Center(child: Text('First Tab')),
          )
        ],
      ),
    );
  }
}

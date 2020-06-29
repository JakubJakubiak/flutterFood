import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
          child: RaisedButton(
            child: Text('cos'),
            onPressed: () {},
          ),
        ),
        
        Image.network(
            'https://cdn.pixabay.com/photo/2018/03/13/18/30/food-3223286_960_720.jpg',
            fit: BoxFit.contain),
        Image.network(
            'https://cdn.pixabay.com/photo/2018/03/13/18/30/food-3223286_960_720.jpg'),
      ],
    ));
  }
  
}



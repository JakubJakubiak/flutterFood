import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
            child: Image.network(
                'https://cdn.pixabay.com/photo/2018/03/13/18/30/food-3223286_960_720.jpg')),
        Expanded(
            child: Image.network(
                'https://cdn.pixabay.com/photo/2018/03/13/18/30/food-3223286_960_720.jpg')),
        Expanded(
            child: Image.network(
                'https://cdn.pixabay.com/photo/2018/03/13/18/30/food-3223286_960_720.jpg')),
      ],
    ));
  }
}
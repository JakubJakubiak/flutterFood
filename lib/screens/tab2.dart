import 'package:flutter/material.dart';
import 'dart:math';
import 'list/menuFood.dart';
import 'package:flutter/cupertino.dart';
import 'list/DetailsScreen.dart';

class Tab2 extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<Tab2> {
  int index = Random().nextInt(locations.length);

  void _initState() {
    setState(() {
      index = Random().nextInt(locations.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 200,
            child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Card(
                    child: ListView(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    DetailsScreen(index: index))),
                      },
                      child: Container(
                          height: 200,
                          child: Stack(children: <Widget>[
                            Hero(
                                tag: locations[index].id,
                                child: Image.network(locations[index].url,
                                    width: MediaQuery.of(context).size.width,
                                    height: 120,
                                    fit: BoxFit.cover)),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 120),
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: FlatButton(
                                      color: Colors.black,
                                      splashColor: Colors.orange,
                                      onPressed: _initState,
                                      child: Text('Random'),
                                    )))
                          ])),
                    ),
                  ],
                )))));
  }
}

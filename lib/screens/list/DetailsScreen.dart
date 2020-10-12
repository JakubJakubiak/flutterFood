import 'package:flutter/material.dart';
import 'menuFood.dart';
import 'menuDrinking.dart';

import '../background/home_page_background.dart';

class DetailsScreen extends StatelessWidget {
  final int index;
  final detal;
  DetailsScreen({Key key, this.index, this.detal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(detal[index].title ?? ""),
        ),
        body: Stack(children: <Widget>[
          HomePageBackground(screenHeight: MediaQuery.of(context).size.height),
          ListView(children: [
            Hero(
                tag: detal[index].id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    detal[index].url ?? "",
                    fit: BoxFit.fill,
                  ),
                )),
            ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(90)),
                child: Card(
                    child: Container(
                        child: Column(children: [
                  Text('\n' + detal[index].description + '\n' ?? "",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(detal[index].listDescription + '\n' ?? "",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(detal[index].fullDescription + '\n' ?? "",
                      style: TextStyle(fontSize: 18, letterSpacing: 1.0)),
                ])))),
          ]),
        ]));
  }
}

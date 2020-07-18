import 'package:flutter/material.dart';
import 'menuFood.dart';
import '../background/home_page_background.dart';

class DetailsScreen extends StatelessWidget {
  final int index;
  const DetailsScreen({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(locations[index].title ?? ""),
        ),
        body: Center(
            child: Container(
                child: Stack(children: <Widget>[
          HomePageBackground(
            screenHeight: MediaQuery.of(context).size.height,
          ),
          Hero(
            tag: locations[index].id,
            child: ListView(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  locations[index].url ?? "",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Card(
                      child: Text(locations[index].description ?? "",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    )),
              ),
              Container(
                child: Card(
                  child: Text(locations[index].fullDescription ?? "",
                      style: TextStyle(fontSize: 18, letterSpacing: 1.0)),
                ),
              )
            ]),
          ),
        ]))));
  }
}

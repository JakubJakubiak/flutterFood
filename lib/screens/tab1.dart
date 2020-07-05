import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'list/menuFood.dart';

import 'background/home_page_background.dart';

class Tab1 extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<Tab1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(children: <Widget>[
              HomePageBackground(
                screenHeight: MediaQuery.of(context).size.height,
              ),
              ListView.builder(
                  itemCount: locations.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: Card(
                          child: Column(children: <Widget>[
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 120,
                                        fit: BoxFit.cover),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 120),
                                      child: ListTile(
                                        title: Text(locations[index].title,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                        subtitle:
                                            Text(locations[index].description),
                                      )),
                                ])))
                      ])),
                    );
                  }),
            ])));
  }
}

class DetailsScreen extends StatelessWidget {
  final int index;
  const DetailsScreen({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(locations[index].title),
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
                  locations[index].url,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Card(
                      child: Text(locations[index].description,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    )),
              ),
              Container(
                child: Card(
                  child: Text(locations[index].fullDescription,
                      style: TextStyle(fontSize: 18, letterSpacing: 1.0)),
                ),
              )
            ]),
          ),
        ]))));
  }
}

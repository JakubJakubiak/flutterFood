import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'list/menuFood.dart';
import 'list/DetailsScreen.dart';
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
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
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
                                    child: Image.network(
                                        locations[index].url ?? "",
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 120,
                                        fit: BoxFit.cover),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 120),
                                      child: ListTile(
                                        title: Text(
                                            locations[index].title ?? "",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                        subtitle: Text(
                                            locations[index].description ?? ""),
                                      )),
                                ])))
                      ])),
                    );
                  }),
            ])));
  }
}

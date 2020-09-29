import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'list/menuDrinking.dart';
import 'list/detailsScreen.dart';
import 'background/home_page_background.dart';

class Tab2 extends StatefulWidget {
  final String detal;
  const Tab2({Key key, this.detal = 'drinkings'}) : super(key: key);

  @override
  createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<Tab2> {
  final detal = drinkings;

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
                  itemCount: detal.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, top: 20),
                      child: Card(
                          child: Column(children: <Widget>[
                        GestureDetector(
                            onTap: () => {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) => DetailsScreen(
                                              index: index, detal: detal))),
                                },
                            child: Container(
                                height: 200,
                                child: Stack(children: <Widget>[
                                  Hero(
                                    tag: detal[index].id,
                                    child: Image.network(detal[index].url ?? "",
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 120,
                                        fit: BoxFit.cover),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 120),
                                      child: ListTile(
                                        title: Text(detal[index].title ?? "",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                        subtitle: Text(
                                            detal[index].description ?? ""),
                                      )),
                                ])))
                      ])),
                    );
                  }),
            ])));
  }
}

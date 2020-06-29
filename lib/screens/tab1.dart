import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'list/menuFood.dart';

import 'background/home_page_background.dart';

// @override
//  Widget build(BuildContext context) {
//    return new PlanetRow();

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
            child: Stack(children: <Widget>[
      HomePageBackground(
        screenHeight: MediaQuery.of(context).size.height,
      ),
      ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(left: 80.0, right: 40, top: 10),
                child: Card(
                  // child: Column(
                  //    mainAxisAlignment: MainAxisAlignment.start,
                  //    crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                    // elevation: 4,
                    // color: Colors.blueGrey,
                    child: ListTile(
                      onTap: () => {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    DetailsScreen(index: index))),
                      },
                      leading: Hero(
                          tag: locations[index].title,
                          child: Column(children: <Widget>[
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Image.network(locations[index].url,
                                fit: BoxFit.cover,
                                height: 150, width: 150),
                            )
                          ])

                          // child:CircleAvatar(
                          //     backgroundImage: NetworkImage(locations[index].url))
                          ),
                      title: Text(locations[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      subtitle: Text(locations[index].description),
                    ),
                  // ]
                  ),
                // )
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
    print(index);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(locations[index].title),
        ),
        body: Center(
            child: Container(
          child: Hero(
            tag: locations[index].title,
            child: ListView(children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(800.0),
                  bottomRight: const Radius.circular(200.0),
                ),
                child: Image.network(
                  locations[index].url,
                  //  width: MediaQuery.of(context).size.width,
                  //  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Card(
                      child: Text(locations[index].description,
                          style: TextStyle(fontSize: 18)),
                    )),
              )
            ]),
          ),
        )));
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {
  List<Widget> _tabList = [Tab1(), Tab2()];
  List<Widget> _iconList = [
    Icon(
      Icons.fastfood,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.local_drink,
      size: 30,
      color: Colors.white,
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      initialIndex: 0,
      length: _tabList.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: TabBarView(
          children: _tabList,
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blueGrey,
        height: 50,
        animationDuration: Duration(milliseconds: 600),
        backgroundColor: null,
        animationCurve: Curves.elasticOut,
        buttonBackgroundColor: Colors.blueGrey,
        items: _iconList,
        onTap: (index) {
          setState(() {
            _tabController.animateTo(index);
          });
        },
      ),
    );
  }
}

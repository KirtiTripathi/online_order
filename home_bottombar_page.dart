import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:online_food_order/discovertab_page.dart';
import 'package:online_food_order/favoritetab_page.dart';
import 'package:online_food_order/home_page.dart';
import 'package:online_food_order/messagetab_page.dart';
import 'package:online_food_order/profiletab_page.dart';


class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  var listOfTabItems = [
    TabItem<IconData>(icon: Icons.favorite, title: 'Favorite'),
    TabItem<IconData>(icon: Icons.map, title: "Discover"),
    TabItem<IconData>(icon: Icons.publish, title: "Publish"),
    TabItem<IconData>(icon: Icons.message, title: 'Message'),
    TabItem<IconData>(icon: Icons.people, title: 'Profile'),
    //TabItem(icon: Icons.list),
  ];

  var listOfTabPages = [
   FavoriteTabPage(),
    DiscoverTabPage(),
    HomePage(),
    MessageTabPage(),
    ProfileTabPage(),
    //TabItem(icon: Icons.list),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: listOfTabItems.length, vsync: this);

  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: TabBarView(
          controller: _tabController,
          children: listOfTabPages
              .map((i) => i

          )
              .toList(growable: false)),

      bottomNavigationBar: ConvexAppBar.builder(
        itemBuilder: _CustomBuilder(listOfTabItems, Colors.white),
        count: listOfTabItems.length,
        backgroundColor: Colors.white,
        initialActiveIndex: 2,
        style: TabStyle.reactCircle,
        controller: _tabController,
      ),
    );
  }
}

class _CustomBuilder extends DelegateBuilder {
  final List<TabItem> items;
  final Color _tabBackgroundColor;

  _CustomBuilder(this.items, this._tabBackgroundColor);

  @override
  Widget build(BuildContext context, int index, bool active) {
    var navigationItem = items[index];
    var _color = active ? Colors.red[800]:Colors.red[800];

    if (index == items.length ~/ 2) {
      return Container(
        width: 60,
        height: 60,
        //color: Colors.yellow,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
        child: Icon(Icons.home,color: Colors.white,),
//        Icon(
//          Icons.add,
//          size: 40,
//          color: _tabBackgroundColor,
//        ),
      );
    }
    var _icon = active
        ? navigationItem.activeIcon ?? navigationItem.icon
        : navigationItem.icon;
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(bottom: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Icon(_icon, color: _color),
          Text(navigationItem.title, style: TextStyle(color: _color, fontSize: 12))
        ],
      ),
    );
  }

  @override
  bool fixed() {
    return true;
  }

}

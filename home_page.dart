import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_food_order/drawer_page.dart';
import 'package:online_food_order/search_page.dart';
import 'package:online_food_order/selfpickup_page.dart';

import 'cart_file.dart';
import 'delivery_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController controller;
  @override
  void dispose() {
    controller.dispose();
  }

  @override
  void initState(){
    super.initState();
    controller = new TabController(length: 2,vsync: this);
  }

  var imgArray = [
    "https://i.ytimg.com/vi/JEeO_hagtVM/maxresdefault.jpg",
    "https://images.unsplash.com/photo-1574126154517-d1e0d89ef734?ixlib=rb-1.2.1&w=1000&q=80",
    "https://media.mnn.com/assets/images/2017/06/sonic_mushroom_beef_burger.jpg.653x0_q80_crop-smart.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTnOeF8e4V5iFrWG6aPEfWHLpZdeXqbitAkEMThiTW_4P-WRs6v&usqp=CAU"
  ];
  var textArray = ["Veg Pasta", "Pizza", " Veg Burger", "Veg Thali"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child:DrawerPage (),
      ),
     // backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Center(
            child: Text(
          'Order food ',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.red[800],
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
             _scaffoldKey.currentState.openDrawer();
          },
          icon: Icon(
            Icons.sort,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => CartPage()),
//              );
            },
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 10),
            child: IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              icon: Icon(
                Icons.add_shopping_cart,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              ClipOval(
                clipper: CircleClipper(),
                child: Container(
                  height: 700,
                  color: Colors.red[800],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(4, (index) {
                        return _getFood(imgArray[index], textArray[index]);
                      }),
                    )),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:370.0,left: 10,right: 10),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,//amber[800],
                      ),
                      width: double.infinity,

                      child: TabBar(
                        tabs: [
                          Text(
                            'Selfpickup',
                            style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Delivery',
                            style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),
                          ),
                        ],
                        unselectedLabelColor:  Colors.grey,
                        indicatorColor: Colors.black,
                        labelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 3.0,
                        indicatorPadding: EdgeInsets.only(left: 30,right: 30,bottom: 2),
                        isScrollable: false,
                        controller: controller,
                      ),
                    ),
                  ),
                  Container(
                    height: 600,
                    child: TabBarView(
                        controller: controller,
                        children: <Widget>[
                          SelfPickupTab(),
                          DeliveryTab(),

                        ]
                    ),
                  )
                ],
              )
            ]
            ),

          ],
        ),
      ),
    );
  }

  Widget _getFood(String image, String description) => Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
          //  height:100 ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1.0,
                  spreadRadius: 0.1,
                  color: Colors.grey,
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18)),
                child: Image.network(
                  '$image',
                  height: 180,width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 10),
                child: Text(
                  '$description',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      '400',
                      style: TextStyle(
                        color: Colors.grey[700],
                          decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '299',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 20,
                   ),
                    Icon(Icons.favorite,size: 20,color: Colors.red[800],),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}


class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return new Rect.fromLTWH(-1 * size.width * 0.5, -1 * size.height * 1.5,
        size.width * 2, size.height * 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}


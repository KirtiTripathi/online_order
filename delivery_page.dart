import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'delivery.dart';

class DeliveryTab extends StatefulWidget {
  @override
  _DeliveryTabState createState() => _DeliveryTabState();
}

class _DeliveryTabState extends State<DeliveryTab> {
  List<Delivery> feedList;

  @override
  void initState() {
    super.initState();
    Iterable data = json.decode(feedImageList);
    feedList = data.map((dynamic ts) => Delivery.fromJson(ts)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ...feedList.map((delivery) => _getPostWithSingleImageRow(delivery)).toList()
        ],
      ),
    );
  }
  Widget _getPostWithSingleImageRow(Delivery delivery) => Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(delivery.postedByProfilePic, fit: BoxFit.cover,width: 50, height: 50,)),

                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 4),
                        Row(
                          children: <Widget>[
                            Text(delivery.postedByName, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16)),
                            SizedBox(width: 8),
                            Image.asset('assets/images/verified_blue_color.png', height: 18, width: 18)
                          ],
                        ),
                        Text(delivery.timeAgo, style: TextStyle(color: Colors.black54, fontSize: 12))
                      ],
                    )
                  ]
              ),
              SizedBox(height: 8),

              if(delivery.imageList.length == 1)
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(imageUrl: delivery.imageList.first, width: double.infinity,height: 200, fit:  BoxFit.cover)),

              if(delivery.imageList.length > 1)
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: delivery.imageList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int position){
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: CachedNetworkImage(imageUrl: delivery.imageList[position], width: 150, fit:  BoxFit.cover)),
                        );
                      }
                  ),
                ),
              SizedBox(height: 8),
              Text(delivery.description, style: TextStyle(color: Colors.black)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
//                  Row(
//                    mainAxisSize: MainAxisSize.min,
//                    children: <Widget>[
//                      Image.asset('assets/images/clap.png', height: 22, width: 22, color:Colors.red[800]),
//                      SizedBox(width: 12),
//                      Text('${delivery.clapsCount} Claps', style: TextStyle(color: Colors.black87))
//                    ],
//                  ),
//
//                  Row(
//                    mainAxisSize: MainAxisSize.min,
//                    children: <Widget>[
//                      Image.asset('assets/images/share.png', height: 22, width: 22, color: Colors.red[800],),
//                      SizedBox(width: 12),
//                      Text('${delivery.shareIcon} Shares', style: TextStyle(color: Colors.black87))
//                    ],
//                  )
                ],
              ),
              SizedBox(height: 6),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 4), blurRadius: 4)
          ],
        )
    ),
  );
}


String feedImageList = """[
  {
    "postedByName": "Sandwitch Express",
    "postedByProfilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSpxfgW36fDOL6fd7zhyCPgoITG7_7XmUUf3QJF_Dz55Ga5Jk-s&usqp=CAU",
    "timeAgo": "2 Min ago",
    "imageList": [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQDHYoE5Nn-mULjwV4tQdJjl8lSmuxvPdbMCRP5sTu8rq0lDBXt&usqp=CAU"
    ],
    "description": "even more important. Child labour is a massive problem in India and in Andhra Pradesh in particular",
    "clapsCount": 12,
    "shareIcon": 40
  },
  {
    "postedByName": "Burger King",
    "postedByProfilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSa74w2Q4cV0t3CTQvFvAiGiMMKogb9bCuksaqns-sJO4rRTh-V&usqp=CAU",
    "timeAgo": "5 Hr ago",
    "imageList": [
      "https://i.insider.com/5bbd187101145529745a9895?width=750&format=jpeg&auto=webp",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT2W4e93SHEPdYPKpb42CcMEdKohst28YbLzWCL7GMF5HM-Bu1o&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRG39TfOVzuuEnkt5ARaEjlxQkTBGI2TKlMOu-ZtsxLwo1HRBk_&usqp=CAU"
    ],
    "description": "Join us in the fight against poverty! By becoming a champion for the poor, you can create your own web page and raise funds for those in desperate need in the Caribbean and Latin America.",
    "clapsCount": 400,
    "shareIcon": 12
  },
  {
    "postedByName": "Yo! Kakke",
    "postedByProfilePic": "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRcV0b4kcsN7dWwMaFUDMNt62nm1g7qIYH0GhjOiSNrvY3vu_ry&usqp=CAU",
    "timeAgo": "2 Min ago",
    "imageList": [
      "https://curlytales.com/wp-content/uploads/2019/12/2019-12-04-1280x720.jpg"
    ],
    "description": "even more important. Child labour is a massive problem in India and in Andhra Pradesh in particular",
    "clapsCount": 12,
    "shareIcon": 40
  }
]""";


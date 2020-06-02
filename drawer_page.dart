import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  DrawerPageState createState()=> DrawerPageState();
}
class DrawerPageState extends State <DrawerPage> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:50.0,left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
               Row(
              children: <Widget>[
                Icon(Icons.person,size: 30,),
                SizedBox(width: 10,),
                Text('Kirti Tripathi',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15)),
              ],
               ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Container(
                      height: 1.6,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: <Widget>[
                      Expanded(child: Text('Notification',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),)),
                      SizedBox(width: 0,),
                      Icon(
                        Icons.arrow_forward_ios ,size: 20,
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: <Widget>[
                      Expanded(child: Text('Payment Options',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 15),)),
                      SizedBox(width: 0,),
                      Icon(
                        Icons.arrow_forward_ios ,size: 20,
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text('Food Orders',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.schedule,size: 30,color: Colors.grey,),
                        SizedBox(width: 10,),
                        Text('Your Orders',style: TextStyle(color: Colors.grey[700],fontSize: 15)),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite,size: 30,color: Colors.red[800]),
                      SizedBox(width: 10,),
                      Text('Favorite Orders',style: TextStyle(color: Colors.grey[700],fontSize: 15)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.bookmark,size: 30,color: Colors.grey),
                      SizedBox(width: 10,),
                      Text('Address Book',style: TextStyle(color: Colors.grey[700],fontSize: 15)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.help,size: 30,color: Colors.grey),
                      SizedBox(width: 10,),
                      Text('Online Ordering Help',style: TextStyle(color: Colors.grey[700],fontSize: 15)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text('Total Bookings',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
                  SizedBox(height: 30,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.done,size: 30,color: Colors.grey),
                      SizedBox(width: 10,),
                      Text('Your Bookings',style: TextStyle(color: Colors.grey[700],fontSize: 15)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.date_range,size: 30,color: Colors.grey),
                      SizedBox(width: 10,),
                      Text('Table Reservation Help',style: TextStyle(color: Colors.grey[700],fontSize: 15)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Container(
                      height: 1.3,
                      color: Colors.grey[300],
                    ),
                  ),
                  Text('About Us',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      height: 1.3,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.lock,size: 30,color: Colors.black),
                      SizedBox(width: 10,),
                      Text('Logout',style: TextStyle(color: Colors.black,fontSize: 15)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Container(
                      height: 1.3,
                      color: Colors.grey[300],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.settings ,size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text('Settings',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Container(
                      height: 1.3,
                      color: Colors.grey[300],
                    ),
                  ),
            ]
            ),
          ),
        )
    );
  }

}






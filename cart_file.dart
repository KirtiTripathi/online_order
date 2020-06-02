import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0.1,
       title: Center(child: Text('My Cart',style: TextStyle(color: Colors.black,),)),
       leading: IconButton(
         onPressed: () => Navigator.of(context).pop(),
         icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
       ),
       actions: <Widget>[
         Padding(
           padding: const EdgeInsets.only(top:18.0, right: 20),
           child: Text('Clear Cart',style: TextStyle(color: Colors.red[600],fontSize: 15,fontWeight: FontWeight.w600),),
         )
       ],
     ),
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20,top:20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                //height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(28)),
                child:  ClipRRect(borderRadius: BorderRadius.circular(40),
                  child: Image.network("https://cdn.livekindly.co/wp-content/uploads/2019/10/vegan-plant-based-burger-king-1068x601.jpg"),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0,left: 10,right: 10),
                child: Text('Burger King',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18), ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 10,right: 10),
                  child:Text('Sector 8, Pune',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 15),)
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8,top: 20),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.radio_button_checked,color: Colors.green,),
                    SizedBox(width: 10,),
                    Expanded(child: Text('Veg Burger',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),)),
                    SizedBox(width: 10,),
                    Text('₹ 299'),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.red[800])
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('+',style: TextStyle(color: Colors.red[800],fontSize: 15,fontWeight: FontWeight.w800),),
                          Text('1',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
                          Text('-',style: TextStyle(color: Colors.red[800],fontSize: 15,fontWeight: FontWeight.w800),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 1.4,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0,bottom: 15),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.note_add,color: Colors.grey[700],size: 30,),
                    SizedBox(width: 10,),
                    Text('Add Special Instructions',style: TextStyle(fontSize: 15),),
                  ],
                ),
              ),
              Container(
                height: 1.4,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Resturant Bill',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Item Total',style: TextStyle(color: Colors.grey[600],fontSize: 15,),)),
                        Text('₹ 299',style: TextStyle(color: Colors.grey[600],fontSize: 15,),)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Delivery Charges',style: TextStyle(color: Colors.grey[600],fontSize: 15,),)),
                        Text('₹ 50',style: TextStyle(color: Colors.grey[600],fontSize: 15,),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Promo Code',style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w600),)),
                        Text('₹ -150',style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 1.4,
                      color: Colors.grey[300],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Total Pay',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),)),
                        Text('₹ 199',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Delivering Food To',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)),
                        Text('Change',style: TextStyle(color: Colors.red[800],fontSize: 15,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text('Kirti Tripathi',style: TextStyle(color: Colors.black,fontSize: 15,),),
                    Text('House no.11,Wakad',style: TextStyle(color: Colors.black,fontSize: 15,),),
                    Text('Pincode-411101,Pune',style: TextStyle(color: Colors.black,fontSize: 15,),),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                    color: Colors.red[800],),
                  child: Center(child: Text('Make Payment',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                ),
              )
            ],
          )

        ),
      ),
    );
  }
}

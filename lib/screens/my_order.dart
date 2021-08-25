import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/orderWidget.dart';

class MyOrder extends StatefulWidget {
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {

  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,

        title: Text('My Orders', style:TextStyle(color: Colors.black,))
      ),
      body: isEmpty? Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(70)
              ),
              child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              
              child: Icon(Icons.shop, color: Colors.orange,size: 70,),
            ),
            ),
            SizedBox(height: 10),
            Text('Cart Empty', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Center(child: Text('Good food is always cooking! Go ahead, order some yummy items from the menu'))
          ],
        ),
      ) : orderAvailable() ,
    );
  }
}

class orderAvailable extends StatefulWidget {
  @override
  _orderAvailableState createState() => _orderAvailableState();
}

class _orderAvailableState extends State<orderAvailable> {
 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
         width: MediaQuery.of(context).size.width/1.2,
          child: Card(
            child: Container(
          padding: EdgeInsets.all(15),
              
              child: Column(

                children: [
                  Text('Little Creatures-Club Street', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Icon(Icons.location_on),
                  Text('856 Utan Village, Jos'),
                  Chip(label: Text('Free Delivery',),backgroundColor: Colors.orange,elevation: 5,)

                ],
                ),
                Divider(),
                orderItem('Hungry man Food', 'Eba, egusi and roundabout', 500),
                 Divider(),
                orderItem('Balanced Diet', 'Rice & beans, dodo and moi-moi', 800),
                 Divider(),
                orderItem('Fruit Salad', 'Orange, apples, banana,mango', 1000),
                Divider(),
                GestureDetector(
                  child: Text('Add More Items', style: TextStyle(color:  Colors.red, fontWeight: FontWeight.bold),),
                  onTap: (){},
                ),
                
                ]
              )
            )
          ),
        ),

      SizedBox(height:20),
      Container(
    padding: EdgeInsets.only(left: 20, right: 20),
        child: orderSummary(context))
      ],
    );
  }
}

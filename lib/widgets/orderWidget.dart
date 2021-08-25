import 'package:flutter/material.dart';






showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Container(
      height: 300,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Icon(Icons.verified,color: Colors.orange,size: 150,),
            Text('Your  Order was successful!', style: TextStyle(color: Colors.black)),
            SizedBox(height:5),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20) 
              ),
              child: RaisedButton(
                onPressed: (){},
                color: Colors.orange,
              
                child: Text('Continue Shopping'),
              ),
            ),
            Container(
              width: 150,
              child: OutlineButton(
                color: Colors.orange,
              
                child: Text('Go to Orders'),
              ),
            )
          ]
        )
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Widget orderItem( orderTitle, combo, int price){
return Column(
crossAxisAlignment: CrossAxisAlignment.start,
  children: [
       Text(orderTitle, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                  Text(combo),
                  Text('\₦ $price')
                  

                ],
                )
  ],
);

}

Widget orderSummary(BuildContext context){ 
return   Container(
          // width: MediaQuery.of(context).size.width/1.2,
          
          child: Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal'),
                    Text('\$30'),
                  ],
                  
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tax & Fees'),
                    Text('\$30'),
                  ],
                  
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery'),
                 Text('\$30'),
                  ],
                  
                ),
                Divider(),
                RaisedButton(
                  
                  onPressed: (){
                    Navigator.pushNamed(context, 'payment');
                  },
                  color: Colors.orange,
                  child: Container(
                    width: 200,
                    child: Center(child: Text('Continue \$90', style: TextStyle(color: Colors.white),)),
                  )
                )
              ],
            ),
          ),
        );
}


class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        backgroundColor: Colors.orange,
      ),
body: Column(
  children: [
        Container(
    
      padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
        child: Card(
    
          child: Container(
    
            padding: EdgeInsets.fromLTRB(5, 10, 5,0),
    
            child: Column(
    
              children: [
    
                Text('DELIVERY ADDRESS', style: TextStyle(fontWeight: FontWeight.bold),),
    
                SizedBox(height: 10),
    
                Container(
    
                  child: Container(
                    padding: EdgeInsets.all(10),
                   
    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
    
                        Text('HOME ADDRESS', style: TextStyle(fontWeight: FontWeight.bold),),
    
                         SizedBox(height: 10),
    
                        Container(
    
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
    
                          child: Row(
    
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
    
                              Text('92 Farin gada'),
    
                              Icon(Icons.offline_bolt, color: Colors.orange,)
    
                            ]
    
                          ),
    
                        ),
                      Divider(),
                      Text('PAYMENT METHOD', style: TextStyle(fontWeight: FontWeight.bold),),
    
                         SizedBox(height: 10),
    
                        Container(
    
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
    
                          child: Row(
    
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
    
                            Icon(Icons.verified, color: Colors.blue,),
                            Text('VISA *************123'),
    
                              Icon(Icons.offline_bolt, color: Colors.orange,)
    
                            ]
    
                          ),
    
                        ),
                        Divider(),
                     
                         Container(
    
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
    
                          child: Row(
    
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
    
                            Icon(Icons.monetization_on_sharp, color: Colors.blue,),
                            Text('PAYPAL *************243'),
    
                              Icon(Icons.offline_bolt, color: Colors.orange,)
    
                            ]
    
                          ),
    
                        ),
                        Divider(),
                     
                         Container(
    
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
    
                          child: Row(
    
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
    
                            Icon(Icons.money_sharp, color: Colors.red),
                            Text('VERVE *************487'),
    
                              Icon(Icons.offline_bolt, color: Colors.orange,)
    
                            ]
    
                          ),
    
                        ),
                        SizedBox(height:20),
                        Center(
                          child: Container(
                            width: 200,
                            child:
                            RaisedButton(
                              onPressed: (){
                                showAlertDialog(context);
                              },
                              color: Colors.orange,
                              child: Text('Payment', style: TextStyle(color: Colors.white),),
                              
                            )
                          ),
                        )
      
    
                      ],
                      
    
                    ),
    
                  ),
                  
    
    
                 
    
                )
    
              ],
    
            )
    
          ),
    
        ),
    
      ),
  ],

)
    );
  }
}
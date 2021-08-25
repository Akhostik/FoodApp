import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/profileList.dart';

class Profile extends StatelessWidget {
  List<String> categories= [
'Notifications',
'Payment Method',
'Reward Credits',
'My Promo code',
'Settings',
'Invite Friends',
'Help Center',
'About Us'
  ];
  List<Widget> catIcons =[
    Icon(Icons.notifications),
    Icon(Icons.money),
    Icon(Icons.monetization_on),
    Icon(Icons.closed_caption_sharp),
    Icon(Icons.settings),
    Icon(Icons.person_add),
    Icon(Icons.help),
    Icon(Icons.info),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
        Container(
          padding: EdgeInsets.fromLTRB(0,50,20,20),
          color: Colors.grey[200],
           height:200,
           child: Row(
             
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Column(
                 children: [
                   CircleAvatar(
                     
                     backgroundImage: AssetImage('assets/akos.jpg',),
                     radius: 50,
                   )
                 ],
               ),
               Column(
                 children: [
                   Text('Shalom Akos',  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                   SizedBox(height: 5),
                   Chip(
                     label: Text('VIP Member',),
                     backgroundColor: Colors.red[300],
                   
                   )
                 ],
               ),
               Column(
                 children: [
                   Icon(Icons.keyboard_arrow_right)
                 ],
               )
             ],
           ),
        ),
        ListTile(
            title: Text('Notification'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
             child: Container(
              
               child: Icon(Icons.info_rounded, color: Colors.yellow),
             ),
              ),
            
            trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
            title: Text('Payment method'),
            leading: CircleAvatar(
               backgroundColor: Colors.white,
             child: Container(
             
               child: Icon(Icons.money,color: Colors.blueAccent, ),
             ),
              ),
            
            trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
            title: Text('Reward Credits'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
             child: Container(
               
               child:  Icon(Icons.monetization_on, color: Colors.purple,),
             ),
              ),
            
            trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
            title: Text('My Promo Code'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
             child: Container(
               
               child:     Icon(Icons.closed_caption_sharp,color: Colors.orange,),
             ),
              ),
            
            trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
            title: Text('Settings'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
             child: Container(
               
               child: Icon(Icons.settings, color: Colors.black)
             ),
              ),
            
            trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
            title: Text('Invite Friends'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
             child: Container(
             
               child:  Icon(Icons.person_add),
             ),
              ),
            
            trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
            title: Text('Help Center'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
             child: Container(
             
               child:  Icon(Icons.headset, color: Colors.yellow,),
             ),
              ),
            
            trailing: Icon(Icons.keyboard_arrow_right),
            ),
             ListTile(
            title: Text('About Us'),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
             child: Container(
             
               child:    Icon(Icons.info, color: Colors.blue),
             ),
              ),
            
            trailing: Icon(Icons.keyboard_arrow_right),
            ),
            
        ],
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';


Widget profile(int count,  title){
 return  ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            title: Text(title),
            leading: CircleAvatar(
             child: Container(
               color: Colors.red,
               child: Icon(Icons.info_rounded),
             ),
              ),
            
            trailing: Icon(Icons.keyboard_arrow_right),
            );
            
        }
        
        ); 
}

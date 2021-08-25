import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/favorites_places.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {

  List<String> img = [
'assets/img1.jpg',
'assets/img2.jpg',
'assets/img3.png',
'assets/img4.jpg',
'assets/img5.png'
  ];

bool isAvailable = true;
  List<String> foodName =[
'Ghana Jollof',
'Nigerian Jollof',
'Jamaican Jollof',
'Mexican chow',
'South African'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.orange,

              tabs: [
                
                Tab( 
                  child: Chip(label: Text('Places'),
                  backgroundColor: Colors.orange,
                  padding:EdgeInsets.only(left:40, right:40),),
                ),
                   Tab( 
                  child: Chip(label: Text('Food'),
                  backgroundColor: Colors.orange,
                  padding:EdgeInsets.only(left:40, right:40),),
                ),
               
            
              ],
            ),
            title: Text('Favorites', style: TextStyle(color: Colors.black),),
            centerTitle: true,
          ),
         body: TabBarView(
            children: [
            Column(children: [
              placesCard('assets/img1.jpg',"Mama Put",'Utan', 9.5),
                placesCard('assets/img1.jpg',"Mama Dan",'Apata', 7.0),
                  placesCard('assets/img1.jpg',"Mama Ola",'Bida', 6.5),
                
            ],),

              ListView.builder(
        itemCount: img.length,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            
            leading: CircleAvatar(
              backgroundImage: AssetImage(img[index])
              ),
            
            trailing: isAvailable? 
            Chip(backgroundColor: Colors.grey, label: Text('Not Available'), ):
            Chip(backgroundColor: Colors.red, label: Text('Not Available'), )
            ,
            title:Text(foodName[index])
            );
        }
        ),
                
            ],
          ),
        )
        
        );
  }
}
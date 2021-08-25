import 'package:flutter/material.dart';

Widget placesCard(String img, String storeName, String streetName,double rating){
  return Container(
    margin: EdgeInsets.only(left:5, right:5, top:5),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Container(
              
              height: 50,
              width: 50,
              child: Image.asset('$img'),
            ),
            SizedBox(width:10),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1st ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$storeName', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(width: 150),
                    Icon(Icons.bookmark, color: Colors.red,)
                  ],
                ),
                // SECOND ROW
                Row(
                  children: [
                    Icon(Icons.location_on),
                    Text('$streetName')
                  ],
                ),
                // THIRD ROW
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text('$rating ratings'),
                      SizedBox(width: 60),
                    Chip(
                      backgroundColor: Colors.orange,
                      label: Text('Free Delivery', style: TextStyle(color: Colors.white)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
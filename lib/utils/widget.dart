import 'package:flutter/material.dart';

Widget Box(String a,String b)
{
  return Padding(
    padding: EdgeInsets.only(left: 5,right: 5,bottom: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 5),
              ),
              child: ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.network('$a')),
            ),
            Container(
              width: double.infinity,
              height: 25,
              padding: EdgeInsets.only(left: 5),
              alignment: Alignment.topLeft,
              color: Colors.white,
              child: Text("$b",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    ),
  );
}


import 'package:flutter/material.dart';
import 'package:mobithice/theme/color.dart';
Widget myappbar(context){
  return  AppBar(title: Text('HiTic',),
    centerTitle: true,
    backgroundColor: primary,
    actions: [
      IconButton(icon: Icon(Icons.search,color: Colors.white,),
          color: Colors.white, onPressed: (){
        return showDialog(context: context,builder: (context){
          return AlertDialog(title: Text("data"),content:
            Container(child: Column(
              children: [

              ],
            ),),
          actions: [
            FlatButton(onPressed: null, child: Text("ok")),
            FlatButton(onPressed: null, child: Text("ok")),

          ],
          );
        });
          })],
    elevation:10,
    titleSpacing: 25,
    leading: IconButton(icon: Icon(Icons.list,color: Colors.white,),),
  );
}
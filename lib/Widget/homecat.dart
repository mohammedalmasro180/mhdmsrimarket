import 'package:flutter/material.dart';

import 'package:mobithice/Page/tras.dart';
import 'package:mobithice/Widget/appbar.dart';
import 'package:http/http.dart' as http;

import 'dart:convert' as convert;

import 'package:mobithice/Widget/drawer.dart';

class homecat extends StatefulWidget {
  @override
  _homecatState createState() => _homecatState();
}

class _homecatState extends State<homecat> {
  Future getdata() async{
    var url="https://tpowep.com/mob/cat.php";
    var respomose=await http.get(url);
    var respomosebody=convert.jsonDecode(respomose.body);
    return respomosebody;


  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getdata(),
        builder:(BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
                itemCount: snapshot.data.length,

                itemBuilder: (context,i) {

                  return
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 20,
                          height: 20,
                          child: Card(
                            child: Column(
                              children: [
                                Expanded(child:
                                Image.network("https://tpowep.com/mob/admin/images/"+snapshot.data[i]['image'],)
                                ),

                                Text(snapshot.data[i]['cname'])

                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return sent(
                            cat:snapshot.data[i]['cname'],
                          );
                        }));
                      },
                    );


                });
          }
          else
            return CircularProgressIndicator();

        }




    );
  }
}

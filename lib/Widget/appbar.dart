import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobithice/Page/Details.dart';
import 'dart:convert' as convert;

import 'package:mobithice/theme/color.dart';
Widget myappbar(context){
  return  AppBar(title: Text('HiTic',),
    centerTitle: true,
    backgroundColor: primary,
    actions: [
      IconButton(icon: Icon(Icons.search,color: Colors.white,),
          color: Colors.white, onPressed: (){
        showSearch(context: context, delegate: TheSearch());
          })],
    elevation:10,
    titleSpacing: 25,
    leading: IconButton(icon: Icon(Icons.list,color: Colors.white,),),
  );
}

class TheSearch extends SearchDelegate<String> {
  //TheSearch({this.contextPage,});

  BuildContext contextPage;
  //WebViewController controller;
  @override
  String get searchFieldLabel => "Enter a web address";

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder(
        future: getdata(),
        builder:(BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(

                itemCount: snapshot.data.length,

                itemBuilder: (context,i) {

                  return InkWell(
                    child: Container(
                      height: 250,

                      width: 150,
                      child: Card(
                        child: Row(
                          children: [
                            Expanded(child:
                            Image.network("https://tpowep.com/mob/admin/images/"+snapshot.data[i]['iname'],)),
                            Expanded(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mname


                              children: [

                                Text(snapshot.data[i]['mname'],style: TextStyle(fontWeight: FontWeight.w600),),
                                Text("??????????????????",style: TextStyle(fontWeight: FontWeight.w600),),


                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("??????????"),
                                          Text(snapshot.data[i]['ram']+"G",style: TextStyle(color: Colors.deepOrange)),
                                        ],
                                      ),

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [

                                          Text("??????????"),
                                          Text(snapshot.data[i]['price']+"\$",style: TextStyle(color: Colors.deepOrange)),
                                        ],
                                      ),

                                    ),

                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("??????????????"),
                                          Text(snapshot.data[i]['pross'],style: TextStyle(color: Colors.deepOrange)),
                                        ],
                                      ),

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [

                                          Text("????????????????"),
                                          Text(snapshot.data[i]['camera'],style: TextStyle(color: Colors.deepOrange)),
                                        ],
                                      ),

                                    ),


                                  ],
                                ),


                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Details(

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

  Future getdata() async{
    var url="https://tpowep.com/mob/search.php";
    var data={"serach":query};
    var respomose=await http.post(url,body: data);
    var respomosebody=convert.jsonDecode(respomose.body);
    return respomosebody;


  }
  @override
  Widget buildSuggestions(BuildContext context) {
    //final suggestions = query.isEmpty ? suggestions1 : [];
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (content, index) => ListTile(
        onTap: (){
          query=query;
          showResults(context);
        },
          leading: Icon(Icons.arrow_left), title: Text(query)),
    );
  }
}

Future getdata() async{
  var url="https://tpowep.com/mob/api.php";
  var respomose=await http.get(url);
  var respomosebody=convert.jsonDecode(respomose.body);
  return respomosebody;


}


import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobithice/Widget/appbar.dart';
import 'package:mobithice/Widget/drawer.dart';
import 'package:mobithice/theme/color.dart';
class posts extends StatefulWidget {
  @override
  _postsState createState() => _postsState();
}

class _postsState extends State<posts> {
  TextEditingController textEditingController = new TextEditingController ();




  var username="user";
  getperf() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    username=   preferences.getString("username");
    if(username!= null){
      setState(() {
        username=   preferences.getString("username");
        sign=true;
        print(username);
      });
    }


  }
  void initState() {

    // TODO: implement initState
    getperf();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(context),
      drawer: drawer(),
      body: Container(
        child: Directionality(
          textDirection: TextDirection.rtl,

          child:ListView(
            children: [
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: bulidtextfield("تعليق", textEditingController)

                    ),
                    Row(
                      children: [
                        Expanded(child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.comment),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("اضف تعليق",textAlign: TextAlign.center,),
                                ),
                                SizedBox(),

                              ],
                            ),
                          ),
                        )),

                      ],
                    )

                  ],
                ),

              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor:  Colors.amber,
                        child: Icon(Icons.perm_contact_cal,color:Colors.deepOrange,),

                      ),
                      title: Text(username,style: TextStyle(color: Colors.black, fontSize: 15),),
                      subtitle: Text("-------------------------------------------------------------------------------------------------------------------------------------",style: TextStyle(color: Colors.black, fontSize: 10),),
                    ),
                    Divider(color: Colors.deepOrange,),
                    Row(
                      children: [
                        Expanded(child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.favorite),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("اعجاب",textAlign: TextAlign.center,),
                              ),
                              SizedBox(),

                            ],
                          ),
                        )),
                        VerticalDivider(color: primary,width: 25,),
                        Expanded(child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.comment),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("تعليق",textAlign: TextAlign.center,),
                              ),
                              SizedBox(),

                            ],
                          ),
                        )),

                      ],
                    )
                  ],
                ),
              )
            ],
          ) ,

        ),
      ),
    );

  }
}
TextFormField bulidtextfield(String hint,TextEditingController Controller)
{
  return TextFormField(
    minLines: 1,
    maxLines: 10,

    maxLength: 255,



    controller: Controller,
    decoration: InputDecoration(labelText: hint,filled: true,fillColor: Colors.white,icon: Icon(Icons.perm_contact_cal,size: 25,color:sh,),border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20)
    )),
  );
}
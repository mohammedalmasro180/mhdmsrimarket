import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:mobithice/Widget/appbar.dart';
class shared extends StatefulWidget {
  @override
  _sharedState createState() => _sharedState();
}

class _sharedState extends State<shared> {
  saveperf(String cu)async  {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setString("key", cu);
    print(sharedPreferences.get("key"));

  }

  getperf(String cu)async  {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
   var country= sharedPreferences.getString("key");
    print(country);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(context),
      body:ListView(
        children: [
          ListTile(
            title: Text("سوريا"),
            onTap: (){

              saveperf("sy");
            },
          ),
          ListTile(
            title: Text("سوريا"),
            onTap: (){
              saveperf("sy0");

            },
          ),
          ListTile(
            title: Text("سوريا"),
            onTap: (){
              saveperf("sy00");
            },
          )
        ],
      )
    );
  }
}

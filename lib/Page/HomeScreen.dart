import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mobithice/Widget/appbar.dart';
import 'package:mobithice/Widget/drawer.dart';
import 'package:mobithice/Widget/homecat.dart';
import 'package:mobithice/Widget/prohome.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  getperf()async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      sharedPreferences.getString("username");
    });

    var country = sharedPreferences.getString("key");
      print(country);

  }
  @override
  void initState() {
  getperf();
    super.initState();
  }

    @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar:myappbar(context),
        drawer:drawer(),
        body: ListView(
          children: [
            SizedBox(
              height: 350.0,
              width: double.infinity,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: false,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Color(0xFFFF335C),
                dotBgColor: Colors.black,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                borderRadius: true,
                radius: Radius.circular(0),
                indicatorBgPadding: 7.0,
                images: [
                  NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                  NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                  ExactAssetImage("assets/images/LaunchImage.jpg"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("اقسام",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
            ),
            Container(
              height: 200,
              child: homecat(),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("اخر المنتجات",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
            ),
            Container(
              height: 400,
              child: homepro(),
            )

          ],
        ),
      ),);
  }
}

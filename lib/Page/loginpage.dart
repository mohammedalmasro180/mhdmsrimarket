import 'package:flutter/material.dart';
import 'package:mobithice/Page/Catogery.dart';
import 'package:mobithice/Page/signup.dart';
import 'package:mobithice/Widget/appbar.dart';
import 'package:mobithice/theme/color.dart';
class loginui extends StatefulWidget {
  @override
  _loginuiState createState() => _loginuiState();
}

class _loginuiState extends State<loginui> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    return        AnimatedContainer(
      width: selected ? 200.0 : 100.0,
      height: selected ? 100.0 : 200.0,
      color: selected ? Colors.red : Colors.blue,
      alignment:
      selected ? Alignment.center : AlignmentDirectional.topCenter,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,

      child: Scaffold(
        appBar: myappbar(context),
        body:  Directionality(      textDirection: TextDirection.rtl,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 600),
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,

                ),
                Positioned(child: Transform.scale(
                  scale: 1.3,
                  child: Transform.translate(
                    offset: Offset(0,-300),
                    child: Container(
                      //color: Colors.lime,
                      height: mdw,
                      width: mdw,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(mdw),
                          color: sh




                      ),
                    ),
                  ),
                )),
                Positioned(
                 top: 300,
                  right: mdw/2,
                  child:
                Container(
                  //color: Colors.lime,
                  height: mdw,
                  width: mdw,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(mdw),
                      color: sh.withOpacity(0.5)




                  ),
                ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(child:
                        Container(


                            margin: EdgeInsets.only(top: 120),
                            child: Text("تسجيل الدخول",style: TextStyle(fontSize: 20,color: Colors.white),))
                        ),
                      Padding(padding: EdgeInsets.only(top: 80),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.amber,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 4,
                                  spreadRadius: 0.1
                              )
                            ]

                        ),
                        child:Stack(

                          children: [
                            Positioned(
                              right: 25,
                              top: 25,
                              child:  Icon(Icons.person,size: 50,color: Colors.white,),)
                          ],
                        ),

                      ),),
                        Padding(
                          padding: const EdgeInsets.all(55),
                          child: Center(
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 600),
                              padding: EdgeInsets.all(30),
                              height: 250,
                              width: mdw/1.2,

                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Form(child: Center(
                                    child: Column(

                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(labelText: "الاسم",filled: true,fillColor: Colors.white,icon: Icon(Icons.perm_contact_cal,size: 25,color:sh,),border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20)
                                            )),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            obscureText: true,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                labelText: "كلمة المرور",
                                                filled: true,

                                                fillColor: Colors.white,


                                                icon: Icon(Icons.perm_contact_cal,size: 25,color:sh,),
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(20)
                                                )),
                                          ),
                                        ),


                                      ],
                                    ),
                                  )),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 4,
                                        spreadRadius: 0.1
                                    )
                                  ]

                              ),

                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(


                                margin: EdgeInsets.only(top: 20),
                                child: Text("هل نسيت كلمة المرور؟",style: TextStyle(fontSize: 20,color: sh),)
                            ),
                            Container(
                              color: Colors.cyan,


                                margin: EdgeInsets.only(top: 20),
                                child:RaisedButton(
                                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                                    onPressed: null,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("تسجيل الدخول",style: TextStyle(color:Colors.white),),
                                      Icon(Icons.arrow_forward,color: Colors.white,
                                      )
                                    ],
                                  ),
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,

                                children: [
                                  Container(


                                      child: Text("  ليس لدي حساب انشاء",style: TextStyle(fontSize: 20,color: sh)),

                                  ),
                                  InkWell(
                                    child:  Text("حساب جديد  "
                                        ,style: TextStyle(fontSize: 20,color: rowto)),

                                    onTap: (){
                                      Navigator.pushReplacement(
                                          context, MaterialPageRoute(builder: (context) =>singup()));

                                    },

                                  )

                                ],
                              ),
                            )

                          ],
                        ),

                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

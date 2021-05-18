import 'package:flutter/material.dart';
import 'package:mobithice/theme/color.dart';
class comment extends StatefulWidget {
  @override
  _commentState createState() => _commentState();
}
TextEditingController textEditingController = new TextEditingController ();
class _commentState extends State<comment> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 50,

      ),
      Positioned(
          bottom: 0,
          child: Container(
            height: 155,
        color: Colors.deepOrange,
        width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: bulidtextfield("تعليق", textEditingController),
                    )
                  ],
                )
              ],
            ),
      ))
    ],);
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

}


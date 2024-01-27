
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Game_Button extends StatelessWidget {
  String text;
  int index;
  Function ongameclick;
  Game_Button(this.text,this.ongameclick,this.index);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(onPressed:(){
        ongameclick(index);
      } ,
        child:Text(text,style: TextStyle(
          fontWeight:FontWeight.w300,
          fontSize: 60,
          color: Colors.red
        ),),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey
          ,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(width: 2,color: Colors.white)
        ),

        ),
      ),
    );
  }
}

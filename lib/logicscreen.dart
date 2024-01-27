
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xogame/screenplayer.dart';


import 'playermodel.dart';

class Login_Screen extends StatelessWidget {
  static const String routename='Login';
  TextEditingController name1=TextEditingController();
  TextEditingController name2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Login",style: TextStyle(fontSize: 30),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(fontSize: 23),
                controller: name1,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter Name Player1",
                  hintStyle: TextStyle(fontSize: 25),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Colors.black,width: 2)
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(fontSize: 23),
                controller: name2,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter Name Player2",
                  hintStyle: TextStyle(fontSize: 25),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(color: Colors.black,width: 2)
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(Screen_Player.routename,
                  arguments: Player_Model(name1.text,name2.text)
              );

            },
                child: Text("Let's go",style: TextStyle(
                    fontSize: 25,color: Colors.black,
                    fontWeight: FontWeight.bold
                ),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius:
                    BorderRadius.circular(24),),
                    side:BorderSide(color: Colors.black87),
                    fixedSize: Size(200, 50)
                )
            )
          ],
        )
    );
  }

}
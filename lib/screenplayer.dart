
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xogame/playermodel.dart';

import 'ganebutton.dart';


class Screen_Player extends StatefulWidget {
  static const String routename='Screen_Player';
  @override
  State<Screen_Player> createState() => _Screen_PlayerState();
}

class _Screen_PlayerState extends State<Screen_Player> {
  List <String>board=[
    "","","",
    "","","",
    "","","",
  ];
  int score1=0,score2=0;
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Player_Model;
    return Scaffold(
        appBar: AppBar(
          title: Text("XO Game"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(args.name1,style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold),),
                      Text("$score1",style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(args.name2,style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold ),),
                      Text("$score2",style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Game_Button(board[0],onclicked,0),
                  Game_Button(board[1],onclicked,1),
                  Game_Button(board[2],onclicked,2),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Game_Button(board[3],onclicked,3),
                  Game_Button(board[4],onclicked,4),
                  Game_Button(board[5],onclicked,5),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Game_Button(board[6],onclicked,6),
                  Game_Button(board[7],onclicked,7),
                  Game_Button(board[8],onclicked,8),
                ],
              ),
            ),
          ],
        )

    );
  }
  int counter=1;
  void onclicked(index){
    if(board[index].isNotEmpty)return;
    if(counter.isOdd) {
      board[index] = "X";
      bool win=checkwinner("X");
      if(win) {
        score1++;
        restboard();
      }
    }else{
      board[index]="O";
      bool win=checkwinner("O");
      if(win) {
        score2++;
        restboard();
      }
    }
    if(counter==9){
      restboard();
    }
    setState(() {
    });
    counter++;

  }
  void restboard(){
    board=[
      "","","",
      "","","",
      "","","",
    ];
    counter=0;
  }
  bool checkwinner(String symbol){
    for(int i=0;i<=6;i+=3){
      if(board[i]==symbol&&board[i+1]==symbol &&board[i+2]==symbol)
        return true;
    }
    for(int i=0;i<3;i++){
      if(board[i]==symbol&&board[i+3]==symbol &&board[i+6]==symbol)
        return true;
    }
    if(board[0]==symbol&&board[4]==symbol&&board[8]==symbol)
      return true;
    if(board[2]==symbol&&board[4]==symbol&&board[6]==symbol)
      return true;
    return false;
  }
}


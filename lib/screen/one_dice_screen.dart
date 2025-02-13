import 'dart:math';

import 'package:flutter/material.dart';

class OneDiceScreen extends StatefulWidget {
  const OneDiceScreen({super.key});

  @override
  State<OneDiceScreen> createState() => _OneDiceScreenState();
}

class _OneDiceScreenState extends State<OneDiceScreen> {

  int DiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrange.shade400,
        appBar: AppBar(
          backgroundColor: Colors.red.shade400,
          centerTitle: true,
          title: Text("Dice",style: TextStyle(fontWeight: FontWeight.bold,fontSize : 30 ,color: Colors.white),),
          actions: [
            Padding(padding: EdgeInsets.all(10),
              child: IconButton(onPressed: (){
              }, icon: Icon(Icons.settings)),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: TextButton(
                    onPressed: (){
                     setState(() {
                       DiceNumber = Random().nextInt(6)+1;
                     });
                    },
                    child: Image(image: AssetImage("images/dice$DiceNumber.png",)),
                  )
              ),
            ],
          ),
        )
    );
  }
}

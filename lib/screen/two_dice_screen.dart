import 'dart:math';
import 'package:dice/widget/drawer.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changDiceNumber (){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
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
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                    onPressed: (){
                      changDiceNumber();
                    },
                    child: Image(image: AssetImage("images/dice$leftDiceNumber.png",)),
                  )

              ),
              SizedBox(width: 5,),
              Expanded(
                  child: TextButton(
                    onPressed: (){
                      changDiceNumber();
                    },
                    child: Image(image: AssetImage("images/dice$rightDiceNumber.png",)),
                  )
              )
            ],
          ),
        )
    );
}
}



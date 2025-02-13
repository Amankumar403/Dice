import 'dart:math';
import 'package:flutter/material.dart';


class FourDiceScreen extends StatefulWidget {
  const FourDiceScreen({super.key});

  @override
  State<FourDiceScreen> createState() => _FourDiceScreenState();
}

class _FourDiceScreenState extends State<FourDiceScreen> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int bottomLeftDiceNumber = 1;
  int bottomRightDiceNumber = 1;


  void changDiceNumber (){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
      bottomLeftDiceNumber = Random().nextInt(6)+1;
      bottomRightDiceNumber = Random().nextInt(6)+1;
    });
  }

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
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
            Row(
              children: [
                Expanded(
                    child: TextButton(
                      onPressed: (){
                        changDiceNumber();
                      },
                      child: Image(image: AssetImage("images/dice$bottomLeftDiceNumber.png",)),
                    )

                ),
                SizedBox(width: 5,),
                Expanded(
                    child: TextButton(
                      onPressed: (){
                        changDiceNumber();
                      },
                      child: Image(image: AssetImage("images/dice$bottomRightDiceNumber.png",)),
                    )
                )
              ],
            ),
          ],
        )
    );;
  }
}

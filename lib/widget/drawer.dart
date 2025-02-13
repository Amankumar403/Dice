import 'package:flutter/material.dart';

import '../screen/four_dice_screen.dart';
import '../screen/one_dice_screen.dart';
import '../screen/three_dice_screen.dart';



class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/alldice.jpg")
                )
            ),
          ),

         GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>OneDiceScreen()));
           },
           child:  ListTile(
             title: Text("One Dice",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.looks_one,size: 28,),
           ),
         ),
          ListTile(
            title: Text("Two Dice",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.looks_two,size: 28,),
          ),
         GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>ThreeDiceScreen()));
           },
           child:  ListTile(
             title: Text("Three Dice",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.looks_3,size: 28,),
           ),
         ),
         GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>FourDiceScreen()));
           },
           child:  ListTile(
             title: Text("Four Dice",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.looks_4_rounded,size: 28,),
           ),
         )
        ],
      ),
    );
  }
}
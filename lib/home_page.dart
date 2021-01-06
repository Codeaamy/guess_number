import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int rNumber = Random().nextInt(9) + 1;
  // int usersNumber;
  TextEditingController userNumberController = TextEditingController();


  String resultText = "Not Guessed";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Guess The Number 0 - 10", style:
          TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.blue[900],
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(resultText, style:
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: userNumberController,
              keyboardType: TextInputType.number,

            ),
          ),
          RaisedButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Guess", style:
              TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.blue[900],
              ),
              ),
            ),
            onPressed: (){
              print("Guessed Button Pressed");
              print("rand number.....${userNumberController.text}");
              int usersNumber = int.parse(userNumberController.text);
              setState(() {
              if(usersNumber < rNumber){
                resultText = "Go Higher";
                // Lower
              }else if(usersNumber > rNumber){
                resultText = "Go Lower";

                //greater
              }else if(usersNumber == rNumber){
                resultText = "Congrats! You have guessed it right";

                // Equal
              }else{
                //Error
              }
              userNumberController.text = "";
              });
            },
          ),
          RaisedButton(
            child: Text('Play Again',style:
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.blue[900],
            ),

            ),
            onPressed: (){
              setState(() {
                rNumber = Random().nextInt(10);

                resultText = 'Not Guessed';
                userNumberController.text = "";

              });
            },
          )
        ],
      ),
    );
  }
}

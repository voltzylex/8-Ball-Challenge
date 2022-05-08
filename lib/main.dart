import 'dart:math';

import 'package:flutter/material.dart';
void main (){
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
     home: Scaffold(
       backgroundColor: Colors.blue[500],
       appBar: AppBar(
         backgroundColor: Colors.blue[800],
         title: Text("Ask me anything"),
       ),
       body: BallPool(),
     ),
  ),);
}
class BallPool extends StatefulWidget {
  const BallPool({Key? key}) : super(key: key);

  @override
  State<BallPool> createState() => _BallPoolState();
}

class _BallPoolState extends State<BallPool> {
  @override
    int change = 1;
    void pressed(){
      setState(() {
        change = Random().nextInt(5)+1;
      });
    }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$change.png'),
              onPressed: (){
                print("The button is pressed");
                pressed();
              },
            ),
            ),
        ],
      ),
    );
  }
}

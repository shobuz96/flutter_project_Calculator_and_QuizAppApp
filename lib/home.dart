import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:quizapps/calculator.dart';
import 'package:quizapps/quiz_screen.dart';

class home extends StatefulWidget {


  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: CupertinoColors.systemGrey4,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              children: [

                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(CupertinoColors.systemYellow)
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => calculator())
                              );
                            },
                            child: Text("Start Calculator",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(CupertinoColors.systemYellow)
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  QuizScreen())
                              );
                            },
                            child: Text("Start Quiz",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)))
                    )
                  ],
                ),

                SizedBox(height: 10)

              ],


            ),
          ),
        ),
      ),

    );
  }
}

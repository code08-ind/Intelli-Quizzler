import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'story_Brain.dart';

StoryBrain storyBrain = StoryBrain();

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 45.0, horizontal: 12.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/back1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 95.0,
                backgroundColor: Colors.greenAccent.shade400,
                child: CircleAvatar(
                  radius: 92.0,
                  backgroundImage: AssetImage('images/logo1.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Text(
                  'INTELLI-QUIZZLER',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cinzel',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 12,
                child: Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Color(0x55FFFFFF),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Colors.greenAccent.shade400,
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'It Is A Quite Adventurous Game Made By' +
                          ' Aryan Garg'.toUpperCase() +
                          ' In 2021. It Basically Focuses On Testing IQ Of A Person Which Is Based On Two Choices And One Of It Is Correct Choice And Correct Answer. It Has A Variety Of Questions With Different Difficulty Levels.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: Text(
                  'THANK YOU FROM ARYAN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ShipporiMinchoB1',
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 3,
                child: RaisedButton(
                  padding: EdgeInsets.all(15.0),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    'BACK TO HOME PAGE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                  color: Colors.greenAccent.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

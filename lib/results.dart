import 'package:flutter/material.dart';
import 'description.dart';
import 'home_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.choice1, @required this.choice2});

  final int choice1;
  final int choice2;

  String result() {
    if (choice1 >= 13) {
      return 'Excellent IQ'.toUpperCase();
    } else if (choice1 >= 9 && choice1 < 13) {
      return 'Good IQ'.toUpperCase();
    } else if (choice1 >= 6 && choice1 < 9) {
      return 'Average IQ'.toUpperCase();
    } else {
      return 'Low IQ'.toUpperCase();
    }
  }

  String innotation() {
    if (choice1 >= 13) {
      return 'Congratulations! You Are Having Quite High IQ And Good Presence Of Mind.';
    } else if (choice1 >= 9 && choice1 < 13) {
      return 'Great! You Are Having Good IQ And Good Presence Of Mind Along With Good Sense.';
    } else if (choice1 >= 6 && choice1 < 9) {
      return 'You Are Lying In The Average Rank And Category. Best Of Luck For The Next Time!';
    } else {
      return 'Oh Gosh! You Are Having Quite Low IQ. You Need A Lot Of Practice.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: Center(
            child: Text(
              "INTELLI-QUIZZLER".toUpperCase(),
              style: TextStyle(
                fontFamily: 'Cinzel',
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Color(0xFF000E1F),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/result.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'YOUR RESULT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cinzel',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      color: Color(0x80FFFFFF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          result().toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'ShipporiMinchoB1',
                            fontSize: 30.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          child: Text(
                            ((choice1 - 1).toString() + '/15').toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Cinzel',
                              fontSize: 140.0,
                            ),
                          ),
                        ),
                        Text(
                          'Correct Answers',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'ShipporiMinchoB1',
                            fontSize: 25.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            innotation(),
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Quicksand',
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ABOUT APPLICATION',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                  color: Colors.yellow.shade800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:destined/description.dart';
import 'package:destined/results.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'story_Brain.dart';
import 'story.dart';
import 'description.dart';

void main() => runApp(DestinationApp());

class DestinationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF000E1F),
      ),
      home: DestinationMain(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class DestinationMain extends StatefulWidget {
  _DestinationMainState createState() => _DestinationMainState();
}

class _DestinationMainState extends State<DestinationMain> {
  int choice1 = 0;
  int choice2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/background${storyBrain.getIndex().toString()}.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 20,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'ShipporiMinchoB1',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(1);
                      choice1++;
                    });
                    if (storyBrain.getIndex() == 16) {
                      storyBrain.setIndex(0);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                            choice1: choice1,
                            choice2: choice2,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(
                    storyBrain.getChoice1(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFF33CCFF),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Expanded(
                flex: 4,
                // ignore: deprecated_member_use
                child: Visibility(
                  visible: storyBrain.visibleButton(),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(2);
                        choice2++;
                      });
                    },
                    child: Text(
                      storyBrain.getChoice2(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

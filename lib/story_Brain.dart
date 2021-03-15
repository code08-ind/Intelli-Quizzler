import 'story.dart';

class StoryBrain {
  int choice1 = 0;
  int choice2 = 0;
  List<Story> _storyData = [
    Story(
        question:
            'A Clock Shows 2pm. Through How Many Degrees Has THe Hour Hand Rotated When The Clock Is Showing 7:30pm?',
        choice1: '165',
        choice2: '145'),
    Story(
        question:
            'If You Rearrange The Letters \'ETKARPEA\', What Will You Have A Name Of?',
        choice1: 'Bird',
        choice2: 'Animal'),
    Story(
        question:
            'Alex Is Two Years Older Than Barney Who Is Twice As OLd As Chris. If The Sum Of The Ages Of Alex, Barney And Chris Is 27, Then How Old Is Barney?',
        choice1: '10',
        choice2: '8'),
    Story(
      question:
          'If \'Light\' Corresponds To \'Blind\', Which Of The Following Analogy Is Same?',
      choice1: 'Sound:Deaf',
      choice2: 'Language:Mute',
    ),
    Story(
      question:
          'If Albert\'s Son Is My Son\'s Father, Then What Is The Relationship Between Me And Albert?',
      choice1: 'Father Or Father-In-Law',
      choice2: 'Brother Or Brother-In-Law',
    ),
    Story(
      question:
          'A Person Had Met Accident And Is Breathing Hard. What You Will Do Next?',
      choice1: 'You Will Try To Help Him By Giving First Aid.',
      choice2: 'You Will Call Ambulance',
    ),
    Story(
        question:
            'Which Number Does Not Belong To The Group?\n 2 5 10 17 26 37 50 64',
        choice1: '64',
        choice2: '50'),
    Story(
      question:
          'Tanya Is Older Than Eric. Cliff Is Older Than Tanya.Eric Is Older Than Cliff. If The First Two Statements Are True, The Third Statement Is -',
      choice1: 'False',
      choice2: 'True',
    ),
    Story(
      question: 'Continue Series:\n A C G M __',
      choice1: 'U',
      choice2: 'T',
    ),
    Story(
      question:
          'A Train Covers 1.5 Kilometers In 1 Minute. How Many Meters Does It Cover In 40 Seconds?',
      choice1: '1000',
      choice2: '850',
    ),
    Story(
      question:
          'The Sequence "Triangle", "Glove", "Clock", "Bicycle", "Octopus" Corresponds To 3, 5, 12, 2, 8? ',
      choice1: 'True',
      choice2: 'False',
    ),
    Story(
      question:
          'It Takes 3 People 18 Minutes To Decorate 15 Cupcakes. How Many Cupcakes Can 6 People Complete In 1 Hour?',
      choice1: '100',
      choice2: '95',
    ),
    Story(
      question: 'If A Circle Is One, How Many Is An Heptagon?',
      choice1: '8',
      choice2: '6',
    ),
    Story(
      question: '6 x 0.5 = 0.125 x ?',
      choice1: '24',
      choice2: '16',
    ),
    Story(
      question:
          'A Newspaper Man Sold 40% Of His Newspapers Today. He Now Has 360 Newspapers Left. How Many Newspapers Did He Sell Today?',
      choice1: '240',
      choice2: '360',
    ),
    Story(
      question:
          'Thanks For Filling The Quiz On IQ. Like And Share Our App And Kindly Review On Google Play Store!!!',
      choice1: 'Find Result',
      choice2: '',
    ),
  ];
  int _storyNumber = 0;

  String getStory() {
    return _storyData[_storyNumber].question;
  }

  int getIndex() {
    return _storyNumber;
  }

  void setIndex(int user) {
    _storyNumber = user;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int nextStory(int userChoice) {
    if (userChoice == 1) {
      _storyNumber += 1;
      choice1 += 1;
      return choice1;
    } else {
      _storyNumber += 1;
      choice2 += 1;
      return choice2;
    }
  }

  // int choiceOne() {
  //   return choice1;
  // }
  //
  // int choiceTwo() {
  //   return choice2;
  // }

  // void restart() {
  //   _storyNumber = 0;
  //   choice1 = 0;
  //   choice2 = 0;
  //   _storyData[7].question = _storyData[7].question + " ";
  // }

  bool visibleButton() {
    if (_storyNumber == 0 ||
        _storyNumber == 1 ||
        _storyNumber == 2 ||
        _storyNumber == 3 ||
        _storyNumber == 4 ||
        _storyNumber == 5 ||
        _storyNumber == 6 ||
        _storyNumber == 7 ||
        _storyNumber == 8 ||
        _storyNumber == 9 ||
        _storyNumber == 10 ||
        _storyNumber == 11 ||
        _storyNumber == 12 ||
        _storyNumber == 13 ||
        _storyNumber == 14) {
      return true;
    } else {
      return false;
    }
  }
}

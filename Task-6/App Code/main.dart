import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.network(
            'https://raw.githubusercontent.com/amfoss/tasks/main/task-6/resources/page1.png'),
        title: 'YOGA SURGE',
        body: 'Welcome to Yoga World',
        footer: Text('Inhale the future, exhale the past.'),
      ),
      PageViewModel(
        image: Image.network(
            'https://raw.githubusercontent.com/amfoss/tasks/main/task-6/resources/page2.png'),
        title: 'Healthy Freak Exercises',
        body: 'Letting go is the hardest asana.',
      ),
      PageViewModel(
        image: Image.network(
            'https://raw.githubusercontent.com/amfoss/tasks/main/task-6/resources/page3.png'),
        title: 'Cycling',
        body:
            'You cannot always control what goes on outside. But you can always control what goes on inside.',
      ),
      PageViewModel(
        image: Image.network(
            'https://raw.githubusercontent.com/amfoss/tasks/main/task-6/resources/page4.png'),
        title: 'Meditation',
        body: 'The longest journey of any person is the journey inward.',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IntroductionScreen(
          next: Text("Next"),
          showSkipButton: true,
          skip: const Text("Skip"),
          done: const Text("Get Started",
              style: TextStyle(fontWeight: FontWeight.w600)),
          color: Colors.black,
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: (Colors.black),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
          pages: getPages(),
          globalBackgroundColor: Colors.brown[100],
          onDone: () {
            _onIntroEnd(context);
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
          backgroundColor: Colors.brown[100],
        ),
        body: Center(
          child: Column(children: <Widget>[
            Image.network(
                'https://raw.githubusercontent.com/amfoss/tasks/main/task-6/resources/welcome.png'),
            Text('Emmanuel Jean Joseph',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Text(
                'I like playing games and reading sometimes, I also used to play chess a lot. I am coming from Kollam and I studied my 11-12th at G.B.C.S in Kottayam.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20))
          ]),
        ));
  }
}

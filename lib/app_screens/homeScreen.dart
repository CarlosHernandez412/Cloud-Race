import 'package:flutter/material.dart';
import 'hostPage.dart';
import 'playerScreen.dart';

// Homescreen where users can host/join a quiz

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Cloud Race', textAlign: TextAlign.center),
      ),
      backgroundColor: Colors.lightBlue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Image.asset("web/quiz_background.jpeg"),
            Spacer(),
            Text(
              "Let's Play Trivia",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            RaisedButton(
              color: Colors.lightGreen,
              child: Text('Host Quiz'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return hostPage();
                    },
                  ),
                );
              },
            ),
            Spacer(),
            RaisedButton(
              color: Colors.yellow,
              child: Text('Join Quiz'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return playerScreen();
                    },
                  ),
                );
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

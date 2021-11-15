import 'package:flutter/material.dart';
import 'hostPage.dart';
import 'playerScreen.dart';

// Homescreen where users can host/join a quiz

class LoadingScreen extends StatelessWidget {
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
              "Loading...",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

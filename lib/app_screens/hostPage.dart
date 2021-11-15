import 'package:flutter/material.dart';
import 'package:cloud_race/services/database.dart';
import 'quizQues.dart';

// Host enters their name, selects a quiz, and can start the quiz button
// Later - Be able to view those in waiting room

class hostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Cloud Race'),
      ),
      backgroundColor: Colors.lightBlue[100],
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Enter Name',
                  ),
                )),
            RaisedButton(
              color: Colors.green,
              child: Text('Start game'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return questions();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
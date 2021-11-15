import 'package:flutter/material.dart';
import 'waitingRoom.dart';

// Users joining a game will enter their name and
// enter gamecode then submit to enter waiting room

class playerScreen extends StatelessWidget {
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
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Enter gamecode',
                  ),
                )),
            RaisedButton(
              color: Colors.green,
              child: Text('Join game'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return waitingRoom();
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

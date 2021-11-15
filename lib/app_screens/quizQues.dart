// ignore: file_names
import 'package:flutter/material.dart';
import 'results.dart';

// The Quiz - Quiz Questions page

class questions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Cloud Race'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.green,
              child: Text('Navigate to the endPage'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return endPage();
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
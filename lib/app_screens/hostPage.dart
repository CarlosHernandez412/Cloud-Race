import 'package:flutter/material.dart';
import 'package:cloud_race/services/database.dart';
import 'quizQues.dart';

//import 'package:cloud_race/services/database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/widgets/async.dart';
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
                      return FirestoreApp();
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

////
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FirestoreApp());
}

class FirestoreApp extends StatefulWidget {
  const FirestoreApp({Key? key}) : super(key: key);

  @override
  _FireStoreAppState createState() => _FireStoreAppState();
}

class _FireStoreAppState extends State<FirestoreApp> {
  //CollectionReference games = FirebaseFirestore.instance.collection('games');

  Future<void> addGame(category) {
    print(category);
    return category;
    // Call the user's CollectionReference to add a new user
    /*return games
          .add({
            'category': quizTitle
          })
          .then((value) => print(value))
          .catchError((error) => print("Failed to add user: $error"));*/
  }

  @override
  Widget build(BuildContext context) {
    //Future<void> createGame(category) { print(category) }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: TextField(),
        ),
        floatingActionButton: null,
        body: Center(
          child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('Categories')
                  .orderBy('quizTitle')
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Container(child: Text('Loading'));
                }
                return ListView(
                  children: snapshot.data!.docs.map((documents) {
                    print(documents);
                    return Center(
                        child: TextButton.icon(
                            label: Text(documents['quizTitle']),
                            icon: Icon(Icons.web),
                            onPressed: () {
                              addGame(documents['quizTitle']);
                            }));
                    print("inloop");
                    //return TextButton(
                    //style:
                  }).toList(),
                );
              }),
        ),
        /*floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () {},
        ),*/
      ),
    );
  }
}

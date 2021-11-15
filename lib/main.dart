import "package:flutter/material.dart";
import 'package:cloud_race/app_screens/quizQues.dart';
import 'package:cloud_race/app_screens/ErrorScreen.dart';
import 'package:cloud_race/app_screens/hostPage.dart';
import 'package:cloud_race/app_screens/LoadingScreen.dart';
import './app_screens/homeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_race/services/database.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(CloudRaceApp());
}

class CloudRaceApp extends StatelessWidget {
  //final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          print('In Builder');
          if (snapshot.hasError) {
            print(snapshot.error?.toString());
            print('in Error block');
            return ErrorPage();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            print("test");
            DatabaseService().getQuizData();
            return HomeScreen();
          }

          return LoadingScreen();
        });
  }
}

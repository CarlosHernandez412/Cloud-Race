import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseService {
  getQuizData() async {
    return await FirebaseFirestore.instance
        .collection("Categories")
        .get()
        .then((QuerySnapshot querySnapshot) {
      print(querySnapshot.docs);
      querySnapshot.docs.forEach((doc) {
        print(doc.data());
      });
    });
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quizz_wiz/firebase_options.dart';
import 'package:quizz_wiz/model/db_connect.dart';
import 'package:quizz_wiz/page/splash_screen.dart';

void main() async {
  var db = DBconnect();
  /* db.addQuestion(Question(
      id: '20',
      title: 'which planet is also called the red planet?',
      options: {
        'Earth': false,
        'Mars': true,
        'Sun': false,
        'Venus': false,
      }));*/
  db.fetchQuestions();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Splashscreen(),
    );
  }
}

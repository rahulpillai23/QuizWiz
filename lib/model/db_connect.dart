import 'dart:convert';

//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quizz_wiz/model/question_model.dart';

class DBconnect {
  final url = Uri.parse(
      'https://quizzwiz-f97d2-default-rtdb.firebaseio.com/questions.json');

  Future<List<Question>> fetchQuestions() async {
    return http.get(url).then((responce) {
      var data = json.decode(responce.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];

      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            title: value['title'],
            options: Map.castFrom(value['options']));
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

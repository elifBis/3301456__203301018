import 'package:flutter/material.dart';
import 'package:uygulamam/question_list.dart';
import 'package:uygulamam/test_model.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);
  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return TestModel(question: questions);
  }
}

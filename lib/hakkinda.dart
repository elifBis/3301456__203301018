

import 'package:flutter/material.dart';
import 'degiskenler.dart';

class Hakkinda extends StatefulWidget {
  const Hakkinda({Key? key}) : super(key: key);

  @override
  State<Hakkinda> createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bground1,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                    color: bground3
              ),
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: Text('Hakkında',
                      style: TextStyle(
                        fontSize: 25
                      ),
                      ),
                    ),
                    Image.asset('assets/images/hakkinda.png'),
                    Text('Elif Bişmişer Vize Projesi',
                    style:TextStyle(fontSize: 25)),
                    Text('203301018',
                        style:TextStyle(fontSize: 20)),
                    Text('Kullanılan siteler: '
                        'freepik.com, '
                        'icons8.com'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

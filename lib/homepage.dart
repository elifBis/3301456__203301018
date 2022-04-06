import 'package:flutter/material.dart';
import 'package:uygulamam/hakkinda.dart';
import 'package:uygulamam/secimekrani.dart';
import 'package:audioplayers/audioplayers.dart';
import 'degiskenler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bground1,
        body: Center(
            child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: bground1,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(16),
                height: 600,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: bground6,
                ),
              ),
            ),
            Positioned(
                child: Image.asset(
              'assets/images/world7.png',
              scale: 2,
            )),
            Positioned(
              top: 400,
              right: 70,
              child: Text('Ülkeleri Tanıma',
                  style: TextStyle(fontSize: 40, color: bground2)),
            ),
            Positioned(
              top: 450,
              right: 136,
              child: Text('Uygulaması',
                  style: TextStyle(fontSize: 25, color: bground2)),
            ),
            Positioned(
              top: 480,
              right: 136,
               child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: bground2)
                        )

                    ),
                    side: MaterialStateProperty.all(
                        BorderSide(
                            width: 2, color: bground1)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecimEkrani() ),);},
                 child: Text('Hadi Başlayalım!',
                 style: TextStyle(
                   color: bground1,
                   fontSize: 15,
                 ),),
               ),
             ),
             Positioned(
              top:525,
              right: 160,
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: bground2)
                        )

                    ),
                    side: MaterialStateProperty.all(
                        BorderSide(
                            width: 2, color: bground1)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Hakkinda() ),);},
                child: Text('Hakkında',
                  style: TextStyle(
                    color: bground1,
                    fontSize: 15,
                  ),),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}

/* Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/images/world5.png',
                  scale:3,
                  alignment: Alignment(7,3),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=> SecimEkrani()),
                      );
                    },
                    child: Text('Hadi Başlayalım!'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                      padding: MaterialStateProperty.all(EdgeInsets.all(16.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: (){ Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=> Hakkinda()),
                    );
                    },
                    child: Text('Hakkında'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),*/
/*
            */
/* Center( child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/world5.png',
                  scale:3,
                  alignment: Alignment(7,3),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=> SecimEkrani()),
                    );
                  },
                  child: Text('Hadi Başlayalım!'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                    padding: MaterialStateProperty.all(EdgeInsets.all(16.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context)=> Hakkinda()),
                  );
                  },
                  child: Text('Hakkında'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                  ),
                ),
              ),
            ],
          ),
          ),*/

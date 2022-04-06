import 'package:flutter/material.dart';
import 'package:uygulamam/test_1.dart';
import 'package:uygulamam/test_2.dart';
import 'package:uygulamam/test_3.dart';
import 'degiskenler.dart';

class TestSecimEkrani extends StatefulWidget {
  const TestSecimEkrani({Key? key}) : super(key: key);

  @override
  State<TestSecimEkrani> createState() => _TestSecimEkraniState();
}

class _TestSecimEkraniState extends State<TestSecimEkrani> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: bground5,
          appBar: AppBar(
            backgroundColor: bground1,
          ),
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.room, color: bground1),
                ),
                Tab(
                  icon: Icon(Icons.flag, color: bground1),
                ),
                Tab(
                  icon: Icon(Icons.public, color: bground1),
                ),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                        color: bground5,
                        child: Center(
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Text('Ülke/Başkent Testi',
                                  style: TextStyle(
                                    fontSize: 25
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Image.asset('assets/images/world4.png',
                                  scale: 3),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              side: BorderSide(color: bground1)
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
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Test1()),
                                    );
                                  },
                                  child: Text(
                                    'Çözmeye Başla!',
                                    style: TextStyle(color: bground1),
                                  ),
                                ),
                              ],
                            ))),
                    Container(
                        color: bground5,
                        child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Text('Ülke/Bayrak Testi',
                                      style: TextStyle(
                                          fontSize: 25
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Image.asset('assets/images/flag.png',
                                      ),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              side: BorderSide(color: bground1)
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
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Test2()),
                                    );
                                  },
                                  child: Text(
                                    'Çözmeye Başla!',
                                    style: TextStyle(color: bground1),
                                  ),
                                ),
                              ],
                            ))),
                    Container(
                        color: bground5,
                        child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(55.0),
                                  child: Text('Ülke/Kıta Testi',
                                      style: TextStyle(
                                          fontSize: 25
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(),
                                  child: Image.asset('assets/images/map3.png',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(50.0),
                                  child: TextButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                side: BorderSide(color: bground1)
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
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Test3()),
                                      );
                                    },
                                    child: Text(
                                      'Çözmeye Başla!',
                                      style: TextStyle(color: bground1),
                                    ),
                                  ),
                                ),
                              ],
                            ))),
                  ],
                ),
              )
            ],
          ),
        ));/* Scaffold(
      backgroundColor: bground1,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test1()),
                  );
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 145, 6, 1),
                    child: Text(
                      'Ülke-Başkent Testi',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade200,
                    image: DecorationImage(
                      alignment: Alignment(2, 9),
                      fit: BoxFit.scaleDown,
                      image: AssetImage('assets/images/world.png'),
                    ),
                    borderRadius: BorderRadiusDirectional.circular(50),
                  ),
                  //  height: 100,
                  //child: Text('Seçenek 1'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Test2()),
                  );
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 145, 6, 1),
                    child: Text(
                      'Ülke-Bayrak Testi',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade200,
                    image: DecorationImage(
                    alignment: Alignment(1,9),
                      fit: BoxFit.scaleDown,
                      image: AssetImage('assets/images/flag.png',
                      ),
                    ),
                    borderRadius: BorderRadiusDirectional.circular(50),
                  ),
                  //  height: 100,
                  //child: Text('Seçenek 1'),
                ),
              ),
            ),
            Expanded(
              child:TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context)=> Test1()
                    ),
                  );
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 145, 6, 1),
                    child: Text('Ülke-Başkent Testi',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade200,
                    image: DecorationImage(
                      alignment: Alignment(2,0),
                      fit: BoxFit.scaleDown,
                      scale: 10,
                      image: AssetImage('assets/images/map2.png'),
                    ),
                    borderRadius: BorderRadiusDirectional.circular(50),
                  ),
                  //  height: 100,
                  //child: Text('Seçenek 1'),
                ),
              ),
            ),
          ],
        ),
      ),
    );*/
  }
}

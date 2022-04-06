import 'package:flutter/material.dart';
import 'package:uygulamam/card_model.dart';
import 'package:uygulamam/testsecimekrani.dart';
import 'degiskenler.dart';
import 'merhaba.dart';

class SecimEkrani extends StatefulWidget {
  const SecimEkrani({Key? key}) : super(key: key);

  @override
  State<SecimEkrani> createState() => _SecimEkraniState();
}

class _SecimEkraniState extends State<SecimEkrani> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bground1,
        body: Column(
          children: [
            Expanded(
              flex:2,
                child: Center(
                  child: Text('Seçimini Yap!',
                  style: TextStyle(
                    color: bground2,
                    fontSize: 25
                  ),),
                )),
            Expanded(
              flex:3,
              child: CardModel(
                  image: 'assets/images/space2.png',
                  text1: 'Farklı Dillerde',
                  text2: 'Merhaba',
                  button: 'Öğrenmeye Başla',
                  func: () => Merhaba(),
              )
            ),
            Expanded(
              flex:3,
              child: CardModel(
                  image: 'assets/images/space.png',
                  text1: 'Farklı Kategorilerde',
                  text2: 'Testler',
                  button: 'Çözmeye Başla!',
                  func: () => TestSecimEkrani(),
              ),
            ),
          ],
        ),
      ),
    );
    /*DefaultTabController(
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
                  icon: Icon(Icons.public, color: bground1),
                ),
                Tab(
                  icon: Icon(Icons.live_help, color: bground1),
                ),
                Tab(
                  icon: Icon(Icons.account_circle, color: bground1),
                ),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                        color: bground3,
                        child: Center(
                            child: Column(
                          children: [
                            Text('İlk Ekran'),
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
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.purple),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10)),
                                  textStyle: MaterialStateProperty.all(
                                      const TextStyle(fontSize: 15))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Merhaba()),
                                );
                              },
                              child: Text(
                                'Öğrenmeye Başla!',
                                style: TextStyle(color: bground1),
                              ),
                            ),
                          ],
                        ))),
                    Container(
                        color: bground4,
                        child: Center(
                            child: Column(
                              children: [
                                Text('İlk Ekran'),
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
                                      foregroundColor:
                                      MaterialStateProperty.all(Colors.purple),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10)),
                                      textStyle: MaterialStateProperty.all(
                                          const TextStyle(fontSize: 15))),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TestSecimEkrani()),
                                    );
                                  },
                                  child: Text(
                                    'Test Et!',
                                    style: TextStyle(color: bground1),
                                  ),
                                ),
                              ],
                            ))),
                    Container(
                        color: bground6,
                        child: Center(child: Text('İlk Ekran')))
                  ],
                ),
              )
            ],
          ),
        ));*/
  }

/*MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: bground1,
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.asset('assets/images/map.png',
                  ),
                ),
                TextButton(
                    onPressed:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context)=> TestSecimEkrani()
                      ),
                      );
                    },
                    child: Text('Teste başla!'),
                ),
                TextButton(
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=> Merhaba()
                      ),
                    );
                  },
                  child: Text('Merhabanı nasıl alırsın?'),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
}

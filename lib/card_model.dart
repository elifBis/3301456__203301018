 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uygulamam/degiskenler.dart';


 class CardModel extends StatefulWidget {
   final String image;
   final String text1;
   final String text2;
   final String button;
   final dynamic Function() func;


   CardModel({required this.image, required this.text1,required this.text2, required this.button, required this.func});

   @override
   State<CardModel> createState() => _CardModelState();
 }

 class _CardModelState extends State<CardModel> {
   @override
   Widget build(BuildContext context) {
     return Center(
       child: Container(
                  height: 220,
                  width: 390,
                  decoration: BoxDecoration(
                    color: bground5,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image.asset(widget.image,
                         ),
                        ),
                       Positioned(
                         top: 20,
                         right:30,
                         child: Text(widget.text1,
                         textAlign: TextAlign.right,
                         style: TextStyle(
                           fontSize:18,
                           color: bground4

                         ),
                         ),
                       ),
                        Positioned(
                          top: 40,
                          right:30,
                          child: Text(widget.text2,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize:35,
                              color: bground11
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right:20,
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
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => widget.func() ),
                           ) ;},
                            child: Text(
                              widget.button,
                              style: TextStyle(color: bground1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
     );

         /*   Expanded(flex:3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: bground5,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: -50,
                          left:-50,
                          child: Image.asset('assets/images/space2.png',
                            scale: 3,),
                        ),
                        Positioned(
                          top: 20,
                          right:15,
                          child: Text('Farklı Dillerde',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize:18
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          right:15,
                          child: Text('Merhaba',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 40
                            ),),
                        ),
                        Positioned(
                          bottom: 20,
                          right:20,
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
                                foregroundColor:
                                MaterialStateProperty.all(Colors.purple),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10)),
                                textStyle: MaterialStateProperty.all(
                                    const TextStyle(fontSize: 15))),
                            onPressed: () {},
                            child: Text(
                              'Öğrenmeye Başla',
                              style: TextStyle(color: bground1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
         ),
       ),
     );*/
   }
 }


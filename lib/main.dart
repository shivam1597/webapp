import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    var Size = MediaQuery.of(context).size;

    print(Size.width/26);
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: Size.width,
                        height: Size.height/1.6,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://www.katadynngo.com/website/var/tmp/image-thumbnails/0/5147/thumb__slider-background/header-ngo.jpeg',)
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 10,
                      left: 10,
                      child: Row(
                        children: [
                          SizedBox(width: Size.width/20,),
                          GestureDetector(
                            child: Text('AnandBharat', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 40),),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecondRoute()),
                              );
                            },
                          ),
                          SizedBox(width: Size.width/3.2,),
                          Text('Home', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),),
                          SizedBox(width: 35,),
                          Text('About Us', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400)),
                          SizedBox(width: 35,),
                          Text('Art Gallery', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400)),
                          SizedBox(width: 35,),
                          Text('Services', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400)),
                          SizedBox(width: 35,),
                          Text('Contacts', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400)),
                          SizedBox(width: 35,),
                          Icon(Icons.search, color: Colors.white,),

                        ],
                      ),
                    ),
                    Positioned(
                        top: Size.height/5,
                        child: Container(
                          width: Size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Participate in changing the world.', style: TextStyle(color: Colors.white, fontSize: 45),),
                              SizedBox(height: 40,),
                              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis nisl cursus, ornare nibh at, feugiat diam. Nulla egestas rhoncus tincidunt.',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 40,),
                              GestureDetector(
                                child: Container(
                                    width: 200,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 3.0,
                                          color: Colors.lightGreen
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0) //                 <--- border radius here
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Learn More', style: TextStyle(color: Colors.white,),),
                                      ],
                                    )
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                  ],
                ),
                Container(
                  width: Size.width,
                  height: Size.height/13,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WANT TO DONATE?', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),),
                      SizedBox(width: 40,),
                      GestureDetector(
                        child: Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3.0,
                                  color: Colors.white
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20.0) //                 <--- border radius here
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('DONATE NOW', style: TextStyle(color: Colors.white,),),
                              ],
                            )
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: Size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(Ionicons.ios_book, size: 40,),
                          SizedBox(height: 10,),
                          Text('Education', style: TextStyle(decoration: TextDecoration.underline, fontSize: 26),),
                          SizedBox(height: 20,),
                          Text('Lorem ipsum dolor sit amet,\n consectetur adipiscing elit')
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Icon(Ionicons.ios_water, size: 40,),
                          SizedBox(height: 10,),
                          Text('Pure Water', style: TextStyle(decoration: TextDecoration.underline, fontSize: 26),),
                          SizedBox(height: 20,),
                          Text('Lorem ipsum dolor sit amet,\n consectetur adipiscing elit')
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Icon(Ionicons.ios_medkit, size: 40,),
                          SizedBox(height: 10,),
                          Text('Medical', style: TextStyle(decoration: TextDecoration.underline, fontSize: 26),),
                          SizedBox(height: 20,),
                          Text('Lorem ipsum dolor sit amet,\n consectetur adipiscing elit')
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}
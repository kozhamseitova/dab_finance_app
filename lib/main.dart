import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool isSwitched = false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: Color(0xFF686868),
                                    width: 1
                                )
                            )
                        ),
                        Expanded(child: Container(),),
                        Switch(
                          value: isSwitched,
                          onChanged: (value){
                            setState(() {
                              isSwitched=value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Color(0xFFC4C4C4),
                          activeColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ]
            ),
            Container(
              height: 100,
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text("Income", style: TextStyle(
                            fontSize: 20
                        ),),
                        Text("150.5T", style: TextStyle(
                            fontSize: 24
                        ),)
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    child: Column(
                      children: [
                        Text("Outcome", style: TextStyle(
                            fontSize: 20
                        ),),
                        Text("150.5T", style: TextStyle(
                            fontSize: 24
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(bottom: 10),
                      height: 260,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color(0xFFA6E4F3),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Column(
                        children: [
                          Text("Payments",
                          style: TextStyle(
                            fontSize: 20,
                            decorationStyle: TextDecorationStyle.solid
                          ),),
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.only(top:10, bottom: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                  )
                              ),
                              Expanded(child: Container(),),
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  )
                              ),
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          )
                        ],
                      )
                    ),
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: Color(0xFFFF6F42),
                                width: 10
                            )
                        ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top:10),
                      margin: EdgeInsets.only(bottom: 10),
                      height: 176,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFB048),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              )
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              )
                          ),
                          Text("History",
                            style: TextStyle(
                                fontSize: 20,
                                decorationStyle: TextDecorationStyle.solid
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:10),
                      height: 163,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Color(0xFFA5D3A2),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Column(
                        children: [
                          Text("Analysis",
                            style: TextStyle(
                                fontSize: 20,
                                decorationStyle: TextDecorationStyle.solid
                            ),),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

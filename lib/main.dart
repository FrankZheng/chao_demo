import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              // decoration: BoxDecoration(border: Border.all(
              //   color: Colors.grey,
              //   width: 1,
              // ), borderRadius: BorderRadius.all(Radius.circular(8.0))),
              width: 150,
              //height: 320,
              //color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                ClipRRect(
                  borderRadius: new BorderRadius.circular(8.0),
                  child: Image.asset('assets/9.jpeg')
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('B&O 一代E8测评 B&O 一代E8测评 B&O 一代E8测评', textAlign: TextAlign.left, maxLines: 2,),
                      Row(children: <Widget>[
                        ClipOval(child: Image.asset('assets/avatar1.jpeg', width: 20, height: 20,)),
                        SizedBox(width: 5,),
                        Flexible(
                            child: Container(
                              //color: Colors.green,
                              padding: EdgeInsets.only(right: 5),
                            child: Text('Lucas Lam sdfdfdfdsf', style: TextStyle(fontSize: 12,), overflow: TextOverflow.ellipsis,)
                            ),
                        ),
                        Text('216', style: TextStyle(fontSize: 12,)),
                        Icon(Icons.favorite, color: Colors.grey, size: 16),
                      ],)

                    ],
                  ),
                ),
              ],)
              )
            
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white, // Color for Android
      statusBarBrightness:
          Brightness.dark // Dark == white status bar -- for IOS.
      ));
  runApp(MyApp());
}

class MoreLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/coffee.jpg'), 
              fit: BoxFit.fitWidth),),
        child: SafeArea(
                  top:true,
                  child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 10),
                  child: Row(children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.close, color: Colors.white, size: 30,), onPressed: () {
                        Navigator.pop(context);
                    },),
                    Spacer(),
                    FlatButton(
                      padding: EdgeInsets.zero,
                      color: Colors.grey,
                      textColor: Colors.white70,
                      child: Text('完成'),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                      
                      },
                    ),
                  ],),
                ),
                SizedBox(height: 150,),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('via @CHAO Team', style: TextStyle(color: Colors.white),)
                  ],),
                ),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white,), 
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                  width:double.infinity,
                  height: 24, 
                  ),
                  Text('手机验证登录/注册', style:TextStyle(fontSize: 30)), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Text('登录注册表示同意'),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {print('onTap 1');},
                      child: Text('《用户协议》', style:TextStyle(color: Colors.blue))),
                    Text('&'),
                    Text('《隐私条款》', style:TextStyle(color: Colors.blue)),
                  ],)    
            ],),),
        ),      
      )
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
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
        home: new MyHome());
  }
}

class MyHome extends StatelessWidget {
  const MyHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/home.gif'), fit: BoxFit.fill)),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 50),
          child: Center(
              child: Column(
            children: <Widget>[
              Text(
                'CH',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
              Text(
                'AO',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '年轻人的潮流玩具社区',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              Spacer(),
              FlatButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text('微信登录'),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  )),
              OutlineButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  color: Colors.transparent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MoreLoginPage()));
                  },
                  child: Text('更多方式登录'),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  )),
              Text(
                '先去逛逛',
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
        ),
      ),
    )
        //MyHomePage(title: 'Flutter Demo Home Page'),
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
                        child: Image.asset('assets/9.jpeg')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'B&O 一代E8测评 B&O 一代E8测评 B&O 一代E8测评',
                            textAlign: TextAlign.left,
                            maxLines: 2,
                          ),
                          Row(
                            children: <Widget>[
                              ClipOval(
                                  child: Image.asset(
                                'assets/avatar1.jpeg',
                                width: 20,
                                height: 20,
                              )),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Container(
                                    //color: Colors.green,
                                    padding: EdgeInsets.only(right: 5),
                                    child: Text(
                                      'Lucas Lam sdfdfdfdsf',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    )),
                              ),
                              Text('216',
                                  style: TextStyle(
                                    fontSize: 12,
                                  )),
                              Icon(Icons.favorite,
                                  color: Colors.grey, size: 16),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

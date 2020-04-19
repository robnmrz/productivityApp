import 'package:flutter/material.dart';
import 'UI/Intray/intray_page.dart';
import 'models/global.dart';

void main() => runApp(MyApp());

double buttonWidth = 80;
dynamic objectWidth(target) => MediaQuery.of(target).size.width; 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productivity App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Productivity App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.yellow,
        home: SafeArea(
          bottom: false,
          top: false,
          child: DefaultTabController(
            length: 3,
            child: new Scaffold(
              body: Stack(
                children: <Widget>[ 
                  TabBarView(
                  children: [
                    IntrayPage(),
                    new Container(
                      color: Colors.orange,
                    ),
                    new Container(
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Intray", style: intrayTitleStyle),
                      Container()
                    ],
                  ),
                ),
                
                Container(
                  height: 80, 
                  width: buttonWidth,
                  margin: EdgeInsets.only(top: 120, left: objectWidth(context)*0.5-buttonWidth/2),
                  child: FloatingActionButton(
                    child: Icon(Icons.add, size: 80,),
                    backgroundColor: redColor,
                    onPressed: () {
                      
                    },
                  ),
                )
               ]
              ),
              appBar: AppBar(
                elevation: 0,
                  backgroundColor: Colors.white,
                  title: new TabBar(
                  tabs: [
                    Tab(
                      icon: new Icon(Icons.home),
                    ),
                    Tab(
                      icon: new Icon(Icons.rss_feed),
                    ),
                    Tab(
                      icon: new Icon(Icons.perm_identity),
                    ),
                  ],
                  labelColor: redColor,
                  unselectedLabelColor: darkGreyColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorPadding: EdgeInsets.all(5.0),
                  indicatorColor: Colors.transparent
                ),
              ),
            ),
          ),
        ),
      );
  }
}

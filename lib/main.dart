// import 'dart:html';

import 'package:cog_app/formPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SKILLED DELIVERY PREDICTIVE MODEL'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // child: Container(
        //   child: Column(
        //     children: [
        //       RaisedButton(
        //         onPressed:() {
        //           Navigator.push(
        //             context, 
        //             MaterialPageRoute(builder: (context) => FormPage())
        //           );
        //         }
        //       )
        //     ],
        //   ),
        // ),
        child: FormPage(),
        
      ),     
    );
  }
}

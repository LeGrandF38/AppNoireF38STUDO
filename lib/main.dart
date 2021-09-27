import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'top.dart';
import 'cadres.dart';
import 'texts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 2,
            ),
            top(),
            GrandTexte("Comptes"),
            Cadre(),

            // Image(
            //   image: AssetImage("F38STUDIOLogo-min.png"),
            //   height: 190,
            //   width: 190,
            // ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yasser/screens/Regist.dart';
import 'package:yasser/screens/account.dart';
import 'package:yasser/screens/app%20intro.dart';
import 'package:yasser/screens/main.dart';
import 'package:yasser/screens/notification.dart';
import 'package:yasser/screens/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
                fontSizeFactor: 1.4,
                fontFamily: 'arabic',
                fontSizeDelta: 2.0,
                bodyColor: Colors.black87,
              )),
      home: AppIntro(),
      // home: NotificationScreen(),
    );
  }
}

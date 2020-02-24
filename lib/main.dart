import 'package:dr_clean/home.dart';
import 'package:dr_clean/screens/areapage.dart';
import 'package:dr_clean/screens/loginpage.dart';
import 'package:dr_clean/utilities/newMain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(

      home: HomePage(),
    );
  }
}
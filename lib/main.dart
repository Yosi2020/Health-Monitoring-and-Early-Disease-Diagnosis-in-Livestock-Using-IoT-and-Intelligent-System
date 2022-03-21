import "package:flutter/material.dart";
import 'package:eyu/Home page/home_page.dart';
import 'package:eyu/constants.dart';
import 'package:eyu/theme.dart';

void main() async{
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Cattle Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.light,
      home: Homepage(),
    );
  }
}
import 'package:eyu/Home%20page/body.dart';
import 'package:flutter/material.dart';
import 'package:eyu/Home page/body.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
        elevation: 0,
        leading: IconButton(
        icon: Icon(Icons.menu),
    onPressed: () {},
    ),
    );
  }
}

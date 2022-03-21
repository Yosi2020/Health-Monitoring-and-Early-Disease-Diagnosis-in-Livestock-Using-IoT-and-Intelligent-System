import 'package:eyu/Cover%20page/cover_page.dart';
import 'package:eyu/Skin%20Disease/Skin_image_taker.dart';
import 'package:eyu/constants.dart';
import 'package:flutter/material.dart';

class body extends StatefulWidget {
  const body({Key key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget> [
        Container(
          height: size.height * 0.5,
          child: Stack(
            children: <Widget> [
              Container(
                height: size.height *0.5 - 27,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                    image: new DecorationImage(
                      image: AssetImage('assets/images/1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)
                  ),
                ),
                child:
                    Center(
                      child: Text('Livestock Application',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Merriweather'
                        ),),
                    ),
              ),
            ],
          ),
        ),
        Container(
          child: Stack(
            children: <Widget> [
              Text(
                'Language Choices',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.only(right: kDefaultPadding / 4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            ElevatedButton(onPressed: () =>
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Cover_page())),
                child: Text('English',
                style: TextStyle(fontSize: 20),),
            style: ElevatedButton.styleFrom(
              elevation: 5,
              side: BorderSide(width: 2, color: Colors.greenAccent),
              shape: RoundedRectangleBorder( //to set border radius to button
                  borderRadius: BorderRadius.circular(30)
              ),
            ),),
            SizedBox(width: 16,),
            ElevatedButton(onPressed: (){},
                child: Text('አማርኛ',
                  style: TextStyle(fontSize: 20),),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                side: BorderSide(width: 2, color: Colors.greenAccent),
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(30)
                ),
              ),)
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            ElevatedButton(onPressed: (){},
              child: Text('Afaan Oromoo',
                style: TextStyle(fontSize: 20),),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                side: BorderSide(width: 2, color: Colors.greenAccent),
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(30)
                ),
              ),),
            SizedBox(width: 16,),
            ElevatedButton(onPressed: (){},
              child: Text('ወላይተኛ',
                style: TextStyle(fontSize: 20),),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                side: BorderSide(width: 2, color: Colors.greenAccent),
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(30)
                ),
              ),)
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            ElevatedButton(onPressed: (){},
              child: Text('ትግርኛ',
                style: TextStyle(fontSize: 20),),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                side: BorderSide(width: 2, color: Colors.greenAccent),
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(30)
                ),
              ),),
            SizedBox(width: 16,),
            ElevatedButton(onPressed: (){},
              child: Text('Qafaraf',
                style: TextStyle(fontSize: 20),),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                side: BorderSide(width: 2, color: Colors.greenAccent),
                shape: RoundedRectangleBorder( //to set border radius to button
                    borderRadius: BorderRadius.circular(30)
                ),
              ),)
          ],
        ),
        SizedBox(height: 15),
        Container(
          height: size.height * 0.18,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            image: new DecorationImage(
              image: AssetImage('assets/images/R.gif'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
            ),
          ),
          child: Center(
            child: Text('MAKE THEM HEALTHY USING OUR SERVICE',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Merriweather'
              ),),
          ),
        ),
      ],
    ),
    );
  }
}

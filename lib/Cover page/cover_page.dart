import 'package:eyu/Sensor%20data/Sensor_data_page.dart';
import 'package:eyu/Skin%20Disease/Skin_image_taker.dart';
import 'package:flutter/material.dart';

class Cover_page extends StatefulWidget {
  const Cover_page({Key key}) : super(key: key);

  @override
  State<Cover_page> createState() => _Cover_pageState();
}

class _Cover_pageState extends State<Cover_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( child : Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50)
              ),
              color: Color(0xFF363f93),
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    )),
                Positioned(
                  top: 115,
                    left: 20,
                    child: Text('Welcome to Our Service', style: TextStyle(
                      fontSize: 20, color: Color(0xFF363f93), fontWeight:
                        FontWeight.bold
                    ),))
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          InkWell(onTap: ()=>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>skinDisease())),
          child :
          Container(
            height: 260,
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                    left: 20,
                    child: Material(
                      child: Container(
                        height: 230.0,
                        width: MediaQuery.of(context).size.width*0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only
                            (bottomLeft: Radius.circular(80.0),
                          ),
                          boxShadow: [BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: new Offset(-10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0)],
                          )
                          ),
                        ),
                      ),
                Positioned(
                    top: 0,
                    left: 30,
                    child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Container(
                    height: 205,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/10.jpg')
                      )
                    ),
                  ),
                )),
                Positioned(
                    top: 25,
                    left: 185,
                    right: 35,
                    child: Container(
                      height: 260,
                      width: 140,
                      child: Column(
                        children: [
                          Text('Skin Diseases', style: TextStyle(
                            fontSize: 21,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold
                          ),),
                          Divider(color: Colors.black,),
                          Text('We proposed an image '
                              'processing-based method to detect skin diseases.'
                              ' This method takes the digital image of disease '
                              'effect skin area, then use image analysis to '
                              'identify the type of disease.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                          ),)
                        ],
                      ),
                    ))
              ],
                    )
          ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          InkWell(onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Sensor_Data())),
            child :
            Container(
                height: 265,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Material(
                        child: Container(
                            height: 260.0,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only
                                (bottomLeft: Radius.circular(80.0),
                              ),
                              boxShadow: [BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: new Offset(-10.0, 10.0),
                                  blurRadius: 20.0,
                                  spreadRadius: 4.0)],
                            )
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        left: 30,
                        child: Card(
                          elevation: 10.0,
                          shadowColor: Colors.grey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Container(
                            height: 229,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/images/R.jpg')
                                )
                            ),
                          ),
                        )),
                    Positioned(
                        top: 25,
                        left: 185,
                        right: 35,
                        child: Container(
                          height: 260,
                          width: 140,
                          child: Column(
                            children: [
                              Text('Reading Sensor Data', style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xFF363f93),
                                  fontWeight: FontWeight.bold
                              ),),
                              Divider(color: Colors.black,),
                              Text('we proposed our livestock device that '
                                  'predicts the disease by getting the data '
                                  'from sensors and asking additional oral '
                                  'questions from farmers. Finally, we '
                                  'recommend how they treat their cattle.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),)
                            ],
                          ),
                        )),
                  ],
                )
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          Container(
              height: 220,
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Material(
                      child: Container(
                          height: 220.0,
                          width: MediaQuery.of(context).size.width*0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only
                              (bottomLeft: Radius.circular(50.0),
                            ),
                            boxShadow: [BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: new Offset(-10.0, 10.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0)],
                          )
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 10,
                      right: 10,
                      child: Card(
                        elevation: 10.0,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Container(
                          height: 190,
                          width: MediaQuery.of(context).size.width/1.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/2.gif')
                              )
                          ),
                        ),
                      )),
                ],
              )
          ),
        ],
      ),
    )
    );
  }
}

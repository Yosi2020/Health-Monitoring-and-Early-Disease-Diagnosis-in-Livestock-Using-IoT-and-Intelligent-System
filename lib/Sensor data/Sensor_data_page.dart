import 'package:flutter/material.dart';

class Sensor_Data extends StatefulWidget {
  const Sensor_Data({Key key}) : super(key: key);

  @override
  State<Sensor_Data> createState() => _Sensor_DataState();
}

const TWO_PI = 3.14 * 2;

class _Sensor_DataState extends State<Sensor_Data> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width/2.8;
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
      children : [
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
              child: Text('Reading Sensor Data', style: TextStyle(
                  fontSize: 20, color: Color(0xFF363f93), fontWeight:
              FontWeight.bold
              ),))
        ],
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
        Positioned(
          child : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children : [
              SizedBox(width: MediaQuery.of(context).size.width * 0.045,),
              Card(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Temperature', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color : Color(0xFF363f93)
                      )),
                      Center(
                        // This Tween Animation Builder is Just For Demonstration, Do not use this AS-IS in Projects
                        // Create and Animation Controller and Control the animation that way.
                        child: TweenAnimationBuilder(
                          tween: Tween(begin: 0.0,end: 0.50),
                          duration: Duration(seconds: 4),
                          builder: (context,value,child){
                            int percentage = (value*100).ceil();
                            return Container(
                              width: size,
                              height: size,
                              child: Stack(
                                children: [
                                  ShaderMask(
                                    shaderCallback: (rect){
                                      return SweepGradient(
                                          startAngle: 0.0,
                                          endAngle: TWO_PI,
                                          stops: [value,value],
                                          // 0.0 , 0.5 , 0.5 , 1.0
                                          center: Alignment.center,
                                          colors: [Colors.blue,Colors.grey.withAlpha(55)]
                                      ).createShader(rect);
                                    },
                                    child: Container(
                                      width: size,
                                      height: size,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: Image.asset
                                                ("assets/images/radial_scale.png")
                                                  .image)
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      width: size-40,
                                      height: size-40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle
                                      ),
                                      child: Center(child: Text("$percentage",
                                        style: TextStyle(fontSize: 40),)),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Heart Beat', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color : Color(0xFF363f93)
                      )),
                      Center(
                        // This Tween Animation Builder is Just For Demonstration, Do not use this AS-IS in Projects
                        // Create and Animation Controller and Control the animation that way.
                        child: TweenAnimationBuilder(
                          tween: Tween(begin: 0.0,end: 0.9),
                          duration: Duration(seconds: 4),
                          builder: (context,value,child){
                            int percentage = (value*100).ceil();
                            return Container(
                              width: size,
                              height: size,
                              child: Stack(
                                children: [
                                  ShaderMask(
                                    shaderCallback: (rect){
                                      return SweepGradient(
                                          startAngle: 0.0,
                                          endAngle: TWO_PI,
                                          stops: [value,value],
                                          // 0.0 , 0.5 , 0.5 , 1.0
                                          center: Alignment.center,
                                          colors: [Colors.blue,Colors.grey.withAlpha(55)]
                                      ).createShader(rect);
                                    },
                                    child: Container(
                                      width: size,
                                      height: size,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: Image.asset
                                                ("assets/images/radial_scale.png")
                                                  .image)
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      width: size-40,
                                      height: size-40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle
                                      ),
                                      child: Center(child: Text("$percentage",
                                        style: TextStyle(fontSize: 40),)),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.045,),
            ]),),
        Center(
          child: Card(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Rumination per day', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color : Color(0xFF363f93)
                  )),
                  Center(
                    // This Tween Animation Builder is Just For Demonstration, Do not use this AS-IS in Projects
                    // Create and Animation Controller and Control the animation that way.
                    child: TweenAnimationBuilder(
                      tween: Tween(begin: 0.0,end: 6.0),
                      duration: Duration(seconds: 4),
                      builder: (context,value,child){
                        int percentage = (value*100).ceil();
                        return Container(
                          width: size,
                          height: size,
                          child: Stack(
                            children: [
                              ShaderMask(
                                shaderCallback: (rect){
                                  return SweepGradient(
                                      startAngle: 0.0,
                                      endAngle: TWO_PI,
                                      stops: [value,value],
                                      // 0.0 , 0.5 , 0.5 , 1.0
                                      center: Alignment.center,
                                      colors: [Colors.blue,Colors.grey.withAlpha(55)]
                                  ).createShader(rect);
                                },
                                child: Container(
                                  width: size,
                                  height: size,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: Image.asset
                                            ("assets/images/radial_scale.png")
                                              .image)
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: size-40,
                                  height: size-40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle
                                  ),
                                  child: Center(child: Text("$percentage",
                                    style: TextStyle(fontSize: 40),)),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),),
        ElevatedButton(onPressed: (){},
          child: Text('Predict Disease',
            style: TextStyle(fontSize: 20),),
          style: ElevatedButton.styleFrom(
            elevation: 5,
            side: BorderSide(width: 2, color: Colors.greenAccent),
            shape: RoundedRectangleBorder( //to set border radius to button
                borderRadius: BorderRadius.circular(30)
            ),
          ),),
      ]
      )
      )
    );
  }
}

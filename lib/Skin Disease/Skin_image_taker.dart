import 'dart:io';
import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';

class skinDisease extends StatefulWidget {
  const skinDisease({Key key}) : super(key: key);

  @override
  State<skinDisease> createState() => _skinDiseaseState();
}

class _skinDiseaseState extends State<skinDisease> {

  File imageFile;

  Future pickImage() async{
    try{
      final image = await ImagePicker().pickImage(source:  ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.imageFile = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: ');
    }

  }

  Future pickCamera() async{
    try{
      final image = await ImagePicker().pickImage(source:  ImageSource.camera);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.imageFile = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget> [
      Scaffold(
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
                        child: Text('Skin Diseases Prediction', style: TextStyle(
                            fontSize: 20, color: Color(0xFF363f93), fontWeight:
                        FontWeight.bold
                        ),))
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
              Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              imageFile != null ? Image.file(
                imageFile, width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3,
              ) : Image.asset("assets/images/10.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3,),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton(
                    title: 'Pick Gallery',
                    icon: Icons.image_outlined,
                    onClicked: ()=> pickImage(),
                  ),
                  const SizedBox(width: 15,),
                  buildButton(
                    title: 'Pick Camera',
                    icon: Icons.camera_alt_outlined,
                    onClicked: ()=>pickCamera(),
                  ),
                ],
              ),
        ])
    ),
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
              SizedBox(height: 16,),
             Container(
                      height: MediaQuery.of(context).size.height*0.1,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Column(
                          children: [
                    Text('Using Our Service Improves Your Cattle Lifestyle.'
                        ' "Better Life with Better Technology"',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),)])
              )
    ] )

      )
      )
    ],);
  }
  Widget buildButton({
    @required String title,
    @required IconData icon,
    @required VoidCallback onClicked,
  }) => FloatingActionButton(
    onPressed: onClicked,
    tooltip: title,
    child: new Icon(icon),
    backgroundColor: Colors.lightGreen,
  );
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tinder_spotify/components/continue_button.dart';
import 'package:tinder_spotify/components/heading_text.dart';
import 'package:tinder_spotify/components/photos_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tinder_spotify/components/underline_text.dart';
import 'package:tinder_spotify/controllers/add_page_controller.dart';

class AddPhotos extends StatefulWidget {
  static const String addPhotos = 'add_photos';

  @override
  _AddPhotosState createState() => _AddPhotosState();
}

class _AddPhotosState extends State<AddPhotos> {
  // File _image;
  // final picker = ImagePicker();

  // _imgFromCamera() async {
  //   // ignore: deprecated_member_use
  //   File image = await ImagePicker.pickImage(
  //       source: ImageSource.camera, imageQuality: 50);

  //   setState(() {
  //     _image = image;
  //   });
  // }

  // _imgFromGallery() async {
  //   // ignore: deprecated_member_use
  //   File image = await ImagePicker.pickImage(
  //       source: ImageSource.gallery, imageQuality: 50);

  //   setState(() {
  //     _image = image;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: Colors.lightBlueAccent,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          // body: Center(
          //   child: _image==null?Text('No image selected'):Image.file(_image),),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText(
                  heading: 'Add Photos',
                  size: 35,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: PhotoCard(
                      colour: Colors.lightBlueAccent,
                      cardChild: SizedBox(
                          height: 100,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )),
                    Expanded(
                        child: PhotoCard(
                      colour: Colors.lightBlueAccent,
                      cardChild: SizedBox(
                          height: 100,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )),
                    Expanded(
                        child: PhotoCard(
                      colour: Colors.lightBlueAccent,
                      cardChild: SizedBox(
                          height: 100,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: PhotoCard(
                      colour: Colors.lightBlueAccent,
                      cardChild: SizedBox(
                          height: 100,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )),
                    Expanded(
                        child: PhotoCard(
                      colour: Colors.lightBlueAccent,
                      cardChild: SizedBox(
                          height: 100,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )),
                    Expanded(
                        child: PhotoCard(
                      colour: Colors.lightBlueAccent,
                      cardChild: SizedBox(
                          height: 100,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                HeadingText(
                  heading: 'Add an introduction',
                  size: 35,
                ),
                SizedBox(
                  height: 20,
                ),
                UnderlineText(
                  hintText: 'LET US START VIBIN',
                  fontSize: 20,
                ),
                SizedBox(
                  height: 50,
                ),
                ContinueButton(
                  onPressed: (){  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddPageController()),
                    );}
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

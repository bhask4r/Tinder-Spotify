import 'package:flutter/material.dart';
class PageName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: Colors.lightBlueAccent,
            onPressed: (){Navigator.pop(context);},
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 19,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          ),
        ),
      ),
    );
  }
}

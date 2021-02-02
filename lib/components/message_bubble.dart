import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({this.sender, this.text,this.isMe});
  final  String sender;
  final String  text;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.end: CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
          Material(
            elevation: 5,
            borderRadius: isMe ? BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)):BorderRadius.only(topRight: Radius.circular(30), bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            color: isMe ? Colors.lightBlueAccent: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                text,
                style: TextStyle(
                  color: isMe ? Colors.white: Colors.black54,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
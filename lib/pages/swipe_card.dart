
import 'package:flutter/material.dart';
import 'package:tinder_spotify/components/container.dart';
import 'package:tinder_swipecard/cards.dart';
import 'package:tinder_swipecard/matches.dart';

//This is the main swipe card dart file which uses tinder swipe card dart package

class SwipeCard extends StatefulWidget {

  static const String swipeCard = 'swipe_card';
  @override
  _SwipeCardState createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(icon: Image.asset('images/person.png'), onPressed: null,),
            IconButton(icon: Image.asset('images/vibe.png'), onPressed: null,),
            IconButton(icon: Image.asset('images/chat.png'), onPressed: null,),
          ],
        ),
        actions: [

      ],

      ),

      body: Stack(


        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          TinderSwipeCard(

            demoProfiles: demoProfiles,
            myCallback: (decision) {},
          ),


        ],
      ),
    );
  }
}




//dummy data
final List<Profile> demoProfiles = [
  Profile(
    photos: [
      "https://unsplash.com/photos/JVZTtdybC8s/download?force=true&w=640",
      "https://unsplash.com/photos/0oRefidSNKc/download?force=true&w=640",
      "https://unsplash.com/photos/MQ9U2GFnnDc/download?force=true&w=640",
    ],

    name: "Daenerys",
    age: "26",
    bio:
    "Do you believe in love at first sight – or should you swipe right again?",

  ),
  Profile(
    photos: [
      "https://unsplash.com/photos/bYzllm-pD1k/download?force=true&w=640",
      "https://unsplash.com/photos/UrYLlff6U60/download?force=true&w=640",
    ],
    name: "Sansa",
    age: "22",
    bio: "Last time I was someone’s type, I was donating blood.",

  ),

  Profile(
    photos: [
      "https://unsplash.com/photos/pvWvjHdX8O0/download?force=true&w=640",
      "https://unsplash.com/photos/p5SXRTjaPTc/download?force=true&w=640",
    ],
    name: "Duckie",
    age: "24",
    bio:
    "What do you think?"
        "Amazing right?",

  ),
];




class TinderSwipeCard extends StatefulWidget {
  TinderSwipeCard({
    Key key,
    this.heading,
    this.text,
    this.title,
    this.demoProfiles,
    this.myCallback,
  });
  final String heading;
  final String text;
  final String title;
  final List demoProfiles;

  final Function(Decision) myCallback;

  @override
  _TinderSwipeCardState createState() => _TinderSwipeCardState();
}

class _TinderSwipeCardState extends State<TinderSwipeCard> {
  Match match = new Match();

  Widget _buildBottomBar(MatchEngine matchEngine) {
    return BottomAppBar(
        color: Colors.transparent,

        );
  }

  @override
  Widget build(BuildContext context) {
    final MatchEngine matchEngine = new MatchEngine(
        matches: widget.demoProfiles.map((final profile) {
          return Match(profile: profile);
        }).toList());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Stack(
          children: [
            CardStack(
              matchEngine: matchEngine,
              onSwipeCallback: (match) {
                widget.myCallback(match);
              },
            ),

          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(matchEngine),
    );
  }
}


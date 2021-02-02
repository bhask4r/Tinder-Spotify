import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spotify_sdk/spotify_sdk.dart';

class SpotifySync extends StatelessWidget {
  static final route = "spotifysync";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () async {
                //Making sure that you're logged into spotify;
                final _token = await SpotifySdk.getAuthenticationToken(
                    clientId: 'd5bcc8d5c3404146b9ed1781816684bf',
                    redirectUrl: 'app-spotify://callback',
                    scope:
                        'user-library-read user-read-recently-played user-top-read'); // Client ID will be hidden
                try {
                  //If token retrival is successful, then spotify api will be called and user data will be retrieved.

                  final _unParsedData = await http.get(
                    "https://api.spotify.com/v1/me/top/artists",
                    headers: {"Authorization": "Bearer ${_token}"},
                  );
                  try {
                    //sorting all the genres
                    List<dynamic> _genres = [];
                    List<dynamic> _artists = [];
                    final _data = jsonDecode(_unParsedData.body);
                    _data['items'].forEach((element) {
                      element['genres'].forEach((genre) {
                        if (!_genres.contains(genre)) {
                          _genres.add(genre);
                        }
                      });
                    });
                    //Sorting all the artists
                    _data['items'].forEach((element) {
                      if (!_artists.contains(element['name'])) {
                        _artists.add(element['name']);
                      }
                    });

                    final reqdata = await http.post(
                        'https://vibedating.ml:3000/insert-user-preferences',
                        body: jsonEncode({
                          "artists": _artists,
                          "genres": _genres,
                          //"user_id": FirebaseAuth.instance.currentUser.uid
                        }));
                    print("HTTP REQ");
                    try {
                      //HTTP REQUEST TO PRIVATE SERVER TRY;
                      print(reqdata.body);
                    } catch (e) {
                      //HTTP REQUEST TO PRIVATE SERVER ERROR;
                    }
                  } catch (err) {
                    //ERROR HANDLING if genre retrival is unsuccessful.
                    print(err);
                  }
                } catch (e) {
                  // On token retreval error

                }
              }),
        ),
      ),
    );
  }
}

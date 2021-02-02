import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_spotify/auth/authenticate.dart';
import 'package:tinder_spotify/pages/chat_screen.dart';
import 'package:tinder_spotify/pages/spotify_sync/spotify_sync.dart';
import 'package:tinder_spotify/pages/swipe_card.dart';
import 'package:tinder_spotify/providers/auth_provider.dart';

import 'package:tinder_spotify/pages/location_page.dart';
import 'package:tinder_spotify/pages/login_page.dart';
import 'package:tinder_spotify/pages/input_phone_details.dart';
import 'package:tinder_spotify/pages/otp_page.dart';
import 'package:tinder_spotify/pages/splash_screen.dart';
import 'package:tinder_spotify/personal_details/birthday_page.dart';
import 'package:tinder_spotify/personal_details/first_name.dart';
import 'package:tinder_spotify/personal_details/gender_identification.dart';
import 'package:tinder_spotify/personal_details/interestedin_page.dart';
import 'package:tinder_spotify/personal_details/pronouns_page.dart';
import 'package:tinder_spotify/personal_details/sexual_orientation.dart';

import 'pages/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpotifySync(),
      initialRoute: SwipeCard.swipeCard,
      routes: {
        SpotifySync.route: (context) => SpotifySync(),
        SwipeCard.swipeCard: (context) => SwipeCard(),
        LoginPage.loginPage: (context) => LoginPage(),
        PhoneDetails.phoneDetails: (context) => PhoneDetails(),
        OTPage.otpPage: (context) => OTPage(),
        LocationPage.locationPage: (context) => LocationPage(),
        SplashScreen.splashScreen: (context) => SplashScreen(),
        ChatScreen.chat: (context)=> ChatScreen(),

        //Personal Details page routes
        BirthdayPage.birthdayPage: (context) => BirthdayPage(),
        FirstNamePage.firstName: (context) => FirstNamePage(),
        GenderIdentification.genderIdentification: (context) =>
            GenderIdentification(),
        InterestedInPage.interestedInPage: (context) => InterestedInPage(),
        PronounsPage.pronounsPage: (context) => PronounsPage(),
        SexualOrientation.sexualOrientation: (context) => SexualOrientation(),
      },
    );
  }
}

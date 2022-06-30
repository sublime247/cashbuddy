import './pages/webpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './pages/get_started_page.dart';
import './pages/onboarding_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,
       DeviceOrientation.portraitDown]);
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (context) => const HOMESCREEN(),
      '/page1': (context) => const FIRSTPAGE(),
      '/webpage':(context) => MyWebView()
    },
  ));
}
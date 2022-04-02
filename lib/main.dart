import 'package:e_commereceapp/screen/landingpage.dart';
import 'package:e_commereceapp/screen/screen/Intro_screen.dart';
import 'package:e_commereceapp/screen/screen/ListViewHomePage.dart';
import 'package:e_commereceapp/screen/screen/add_products_page.dart';
import 'package:e_commereceapp/screen/screen/auth_screen.dart';
import 'package:e_commereceapp/screen/screen/item_screen.dart';
import 'package:e_commereceapp/screen/screen/project_detail.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(25))),
      ),
      home: LandingScreen(),
      routes: {
        'ListViewHomePage': (context) => ListViewHomePage.length(),
        'login': (context) => AuthScreen(authType: AuthType.login),
        'register': (context) => AuthScreen(authType: AuthType.register),
      },
    );
  }
}

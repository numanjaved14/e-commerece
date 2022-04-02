import 'package:e_commereceapp/screen/screen/Intro_screen.dart';
import 'package:e_commereceapp/screen/screen/ListViewHomePage.dart';
import 'package:e_commereceapp/screen/screen/project_detail.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({Key? key}) : super(key: key);
  Future<FirebaseApp> intialize = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: intialize,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Text("${snapshot.error}"),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (BuildContext context, AsyncSnapshot streamsnapshot) {
                  if (streamsnapshot.hasError) {
                    return Scaffold(
                      body: Text("${streamsnapshot.error}"),
                    );
                  }
                  if (streamsnapshot.connectionState ==
                      ConnectionState.active) {
                    User? user = streamsnapshot.data;
                    if (user == null) {
                      return IntroScreen();
                    } else {
                      return ProjectDetail();
                    }
                  }
                  return Scaffold(
                    body: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Checking Authnetication....',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          const CircularProgressIndicator(),
                        ],
                      ),
                    ),
                  );
                });
          }

          return Scaffold(
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('INITIALZATION...',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const CircularProgressIndicator()
                ],
              ),
            ),
          );
        });
  }
}

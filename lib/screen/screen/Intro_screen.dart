import 'package:e_commereceapp/widgets/original_button.dart';
import 'package:flutter/material.dart';
// import 'package:untitled/widgets/original_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20 , vertical: 20  ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(),
              Image.asset('assets/images/logo.png' ),
              OriginalButton(
                text: 'Get Started',
                onPressed: () => Navigator.of(context).pushNamed('login'),
                textColor: Colors.cyan,
                bgColor: Colors.white,
              ),
            ] ,
          ),
        ),
      ),
    );
  }
}

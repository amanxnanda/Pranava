import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Center(
                child: TyperAnimatedTextKit(
                  text: ['Welcome to Flutter Aman Nanda'],
                  isRepeatingAnimation: false,
                  speed: Duration(milliseconds: 100),
                  textAlign: TextAlign.center,
                  textStyle: TextStyle(
                    fontSize: 55.0,
                    color: Colors.orange,
                    fontFamily: 'Blauer',
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}

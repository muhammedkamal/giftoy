import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:giftoy/screens/home.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo.png',
              ),
              SizedBox(height: 20),
              Text(
                'GifToy',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontSize: 75,
                    ),
              ),
              Container(
                width: double.infinity,
                child: AnimatedTextKit(
                  onFinished: () {
                    Future.delayed(Duration(milliseconds: 1500), () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (ctx) => Home()));
                    });
                  },
                  pause: const Duration(seconds: 1),
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Your old Toy is New kid',
                      textAlign: TextAlign.center,
                      textStyle: Theme.of(context).textTheme.headline5.copyWith(
                          fontFamily: 'Amiri', fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              TextLiquidFill(
                loadDuration: Duration(seconds: 2),
                boxHeight: 100,
                waveDuration: const Duration(seconds: 1),
                waveColor: Colors.deepPurpleAccent,
                text: 'Happiness',
                textAlign: TextAlign.center,
                textStyle: Theme.of(context).textTheme.headline5.copyWith(
                    fontFamily: 'ZenDos', fontStyle: FontStyle.italic),
              ),
            ],
          ),
          width: double.infinity,
        ),
      ),
    );
  }
}

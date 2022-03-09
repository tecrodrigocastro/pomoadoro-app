import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pomo_adoro/screens/home_screen.dart';
import 'package:pomo_adoro/utils/color.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.width * 1.2,
              color: primaryColor,
              child: Text(
                "PomoAdoro",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OleoScript',
                    fontSize: 46),
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  BezierCurveSection(
                    start: Offset(0, 125),
                    top: Offset(screenWidth / 4, 150),
                    end: Offset(screenWidth / 2, 125),
                  ),
                  BezierCurveSection(
                    start: Offset(screenWidth / 2, 125),
                    top: Offset(screenWidth / 4 * 3, 100),
                    end: Offset(screenWidth, 100),
                  ),
                ],
              ),
              child: Container(
                height: 150,
                color: primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

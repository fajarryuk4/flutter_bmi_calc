import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calc/constans/constans.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class SplashScreenPage extends StatelessWidget {
  final logic = Get.find<SplashScreenLogic>();
  final SplashScreenState state = Get.find<SplashScreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: inactiveColor,
          ),
          child: Center(
            child: WavyAnimatedTextKit(
              isRepeatingAnimation: false,
              textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              pause: Duration(milliseconds: 100),
              speed: Duration(milliseconds: 250),
              text: ['B M I', 'BMI'],
            )
          ),
        ));
  }
}

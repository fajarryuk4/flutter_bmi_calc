import 'package:flutter/material.dart';
import 'package:flutter_bmi_calc/constans/constans.dart';
import 'package:flutter_bmi_calc/gui/component/iconic_round_button.dart';
import 'package:flutter_bmi_calc/gui/component/custom_box.dart';
import 'package:flutter_bmi_calc/gui/component/slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class BMICalculatorPage extends StatelessWidget {
  final logic = Get.find<BMICalculatorLogic>();
  final BMICalculatorState state = Get.find<BMICalculatorLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  inactiveColor.withOpacity(0.7),
                  activeColor.withOpacity(0.7)
                ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter
            )
        ),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CustomBox(
                      containerChild: Container(
                        margin: const EdgeInsets.all(30),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'Your Age',
                              style: kSecStyle,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  state.age.toString(),
                                  style: kMainStyle,
                                ),
                                Text(
                                  'Old',
                                  style: kSecStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                PlusAndMinusRoundButton(
                                  myIcon: FontAwesomeIcons.plus,
                                  onPressed: () {}
                                  // => changedAge(age + 1),
                                ),
                                PlusAndMinusRoundButton(
                                  myIcon: FontAwesomeIcons.minus,
                                  onPressed: () {}
                                  // => changedAge(age - 1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomBox(
                      containerChild: SliderWidget(
                        label: 'HEGHIT',
                        max: maxHeight,
                        min: minHeight,
                        sliderValue: state.height,
                        onPressed: () {}
                        // changedSlidedHeight,
                      ),
                    ),
                    CustomBox(
                      containerChild: SliderWidget(
                        label: 'WEGHIT',
                        max: maxWeight,
                        min: minWeight,
                        sliderValue: state.weight,
                        onPressed: () {}
                        // changedSlidedWeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.toNamed(ResultScreen.routeName,
                //     arguments: BmiData(
                //       id: null,
                //       result: null,
                //       detail: '~',
                //       weight: weight,
                //       title: '~',
                //       age: age,
                //       height: height,
                //       gender: maleColor == activeColor
                //           ? Gender.male
                //           : Gender.female,
                //       dateTime: DateTime.now(),
                //     ));
              },
              child: SafeArea(
                child: Container(
                  color: activeColor,
                  // margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: 66.0,
                  child: Center(
                      child: Text(
                        'Calculate',
                        style: kMainStyle,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

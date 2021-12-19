import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/design_components/bottom_button.dart';
import 'package:bmi_calculator/design_components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Your Result',
              style: kResultTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kWeightTitleTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kWeightNumberTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kWeightDescriptionTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE YOUR BMI',
            onTap: () {
              Navigator.pop(
                context,
              );
            },
          )
        ],
      ),
    );
  }
}

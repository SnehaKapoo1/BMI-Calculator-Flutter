import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomHeightContainer = 80.0;
const activeCardColor = Color(0xFF101E33);
const inactiveCardColor = Color(0xFF111328);
const bottomColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int genderNum) {
    if (genderNum == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                        print('male tab is pressed');
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                /*Expanded(
                  child: ReusableCard(
                    colour: activeCardColor, cardChild:,
                  ),
                ),*/
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                /*Expanded(
                  child: ReusableCard(
                    colour: activeCardColor, cardChild:,
                  ),
                ),*/
                /* Expanded(
                  child: ReusableCard(
                    colour: activeCardColor, cardChild:,
                  ),
                ),*/
              ],
            ),
          ),
          Container(
            color: bottomColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomHeightContainer,
          )
        ],
      ),
    );
  }
}

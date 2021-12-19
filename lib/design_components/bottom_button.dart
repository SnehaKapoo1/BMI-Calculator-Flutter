import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;

  const BottomButton({
    Key? key,
    required this.buttonTitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        color: kBottomColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomHeightContainer,
      ),
    );
  }
}

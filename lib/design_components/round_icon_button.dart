import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onTap;

  const RoundIconButton({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(
          icon,
          color: Colors.white,
        ),
        shape: const CircleBorder(),
        elevation: 0.0,
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        fillColor: const Color(0xFF4C4F5E),
        onPressed: onTap);
  }
}

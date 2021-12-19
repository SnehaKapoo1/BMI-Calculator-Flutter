import 'package:flutter/cupertino.dart';
import '../constants/constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconContent({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: const Color(0xFFFEFEFE),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}

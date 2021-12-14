import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  const ReusableCard({Key? key, required this.colour, required this.cardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}

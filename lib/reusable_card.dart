import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final void Function()? onPress;

  const ReusableCard(
      {Key? key,
      required this.colour,
      this.cardChild,
      this.onPress}) // this cardChild one i want this argument as optional
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}

/*
Instead of

final Function? onPressed;
use

final VoidCallback? onPressed;
or

final Function()? onPressed;*/

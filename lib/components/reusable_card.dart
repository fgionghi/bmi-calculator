import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  //we create our own property to be able to change background

  final Color colour;
  final Widget cardChild;
  //onPress take a function, precisely it take onState function and it is
  //a property of reusableCard. It is the passed to GestureDetector as a onTap func.
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        //rounded corner
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}

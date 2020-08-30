import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colourParameter, this.cardChild, this.onPress});
  final Color colourParameter;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colourParameter,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
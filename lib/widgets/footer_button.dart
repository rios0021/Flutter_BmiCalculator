import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class FooterButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;

  FooterButton({@required this.buttonText,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonText,
            style: kLargeTextStyle,
          ),
        ),
      ),
      onTap: onTap,
      // onTap: () => Navigator.pushNamed(context, 'results'),
    );
  }
}

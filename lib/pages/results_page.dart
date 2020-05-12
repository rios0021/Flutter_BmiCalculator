import 'package:flutter/material.dart';

import 'package:bmi_calculator/widgets/footer_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';

class ResultsPage extends StatelessWidget {
  
  ResultsPage({@required this.interpretation, @required this.bmiResult, @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
  String _range;
  if(resultText == 'Obese')
  _range = '30 or more';
  if(resultText == 'Overweight')
  _range = '25 - 29.9';
  if(resultText == 'Normal')
  _range = '18.5 - 24.9';
  if(resultText == 'Underweight')
  _range = '18.5 or less';

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Your Result',
                style: kNumberTextStyle,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultLabel,
                    ),
                    Text(
                      bmiResult,
                      style: kResultNumber,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '$resultText BMI range:',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          '$_range kg/m2',
                          style: kResultText,
                        ),
                      ],
                    ),
                    Text(
                      interpretation,
                      style: kResultText,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            FooterButton(
              buttonText: 'RE-CALCULATE',
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}

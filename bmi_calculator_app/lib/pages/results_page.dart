import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants/index.dart';
import 'package:bmi_calculator_app/widgets/index.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  });
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your result', style: kTitleTextStyle),
            ),
          ),
          MiddleCardWidget(
            bmiResult: bmiResult,
            resultText: resultText,
            interpretation: interpretation,
          ),
          BottomButton(
            onTap: () => Navigator.pop(context),
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}

class MiddleCardWidget extends StatelessWidget {
  MiddleCardWidget({
    this.bmiResult,
    this.resultText,
    this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        flex: 5,
        child: ClickableCard(
          color: kActiveCardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(resultText.toUpperCase(), style: kResultTextStyle),
              Text(bmiResult, style: kBMITextStyle),
              Text(
                interpretation,
                style: kBMIBodyTextStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants/index.dart';
import 'package:bmi_calculator_app/widgets/index.dart';

class ResultsPage extends StatelessWidget {
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
          MiddleCardWidget(),
          BottomButton(
            onTap: () => Navigator.pushNamed(context, '/'),
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}

class MiddleCardWidget extends StatelessWidget {
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
              Text('Normal', style: kResultTextStyle),
              Text('18.3', style: kBMITextStyle),
              Text(
                'You should eat more.',
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

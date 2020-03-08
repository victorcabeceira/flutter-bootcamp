import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/widgets/index.dart';
import 'package:bmi_calculator_app/widgets/icon_text_col.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 60.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);

enum GenderEnum { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderEnum selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ClickableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderEnum.male;
                      });
                    },
                    color: selectedGender == GenderEnum.male
                        ? activeCardColor
                        : inactiveCardColor,
                    child: IconTextColumn(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ClickableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderEnum.female;
                      });
                    },
                    color: selectedGender == GenderEnum.female
                        ? activeCardColor
                        : inactiveCardColor,
                    child: IconTextColumn(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ClickableCard(color: activeCardColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ClickableCard(color: activeCardColor)),
                Expanded(child: ClickableCard(color: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

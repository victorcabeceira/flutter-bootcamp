import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/widgets/index.dart';
import 'package:bmi_calculator_app/widgets/icon_text_col.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator_app/constants/index.dart';

enum GenderEnum { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderEnum selectedGender;
  int height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: TopRowWidget(
                  tapMaleIcon: () => setState(
                        () {
                          selectedGender = GenderEnum.male;
                        },
                      ),
                  tapFemaleIcon: () => setState(() {
                        selectedGender = GenderEnum.female;
                      }),
                  selectedGender: selectedGender)),
          Expanded(
            child: ClickableCard(
              color: kActiveCardColor,
              child: MiddleRowWidget(
                onChangeSlider: (int newHeight) => setState(() {
                  height = newHeight;
                }),
                height: height,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ClickableCard(color: kActiveCardColor)),
                Expanded(child: ClickableCard(color: kActiveCardColor)),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class TopRowWidget extends StatelessWidget {
  TopRowWidget({
    @required this.tapMaleIcon,
    @required this.tapFemaleIcon,
    @required this.selectedGender,
  });

  final Function tapMaleIcon;
  final Function tapFemaleIcon;
  final GenderEnum selectedGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ClickableCard(
              onTap: () => tapMaleIcon(),
              color: selectedGender == GenderEnum.male
                  ? kActiveCardColor
                  : kInactiveCardColor,
              child: IconTextColumn(
                icon: FontAwesomeIcons.mars,
                text: 'MALE',
              ),
            ),
          ),
          Expanded(
            child: ClickableCard(
              onTap: () => tapFemaleIcon(),
              color: selectedGender == GenderEnum.female
                  ? kActiveCardColor
                  : kInactiveCardColor,
              child: IconTextColumn(
                icon: FontAwesomeIcons.venus,
                text: 'FEMALE',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MiddleRowWidget extends StatelessWidget {
  MiddleRowWidget({this.onChangeSlider, this.height});

  final Function onChangeSlider;
  final int height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'HEIGHT',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              height.toString(),
              style: kNumbersTextStyle,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: kSliderThumbColor,
            activeTrackColor: kSliderActiveColor,
            overlayColor: kSliderThumbOverlayColor,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
          ),
          child: Slider(
            value: height.toDouble(),
            min: kMinUserHeight,
            max: kMaxUserHeight,
            inactiveColor: kSliderInactiveColor,
            onChanged: (double newHeight) => onChangeSlider(newHeight.round()),
          ),
        )
      ],
    );
  }
}

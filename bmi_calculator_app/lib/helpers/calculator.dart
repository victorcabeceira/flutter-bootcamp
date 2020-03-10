import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your body mass is higher than normal. Eat less, exercise more and visit a doctor.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body mass, congratulations!';
    } else {
      return 'Your body mass is lower than normal. Eat more, exercise and maybe visit a doctor';
    }
  }
}

import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.weight, this.height});

  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    //only 1 number after the comma
    return _bmi.toStringAsFixed(1);
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
      return 'Eat less you fat!!';
    } else if (_bmi > 18.5) {
      return 'Good job bro';
    } else {
      return 'Eat more booy!!';
    }
  }
}

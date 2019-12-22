import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi; // private variable only visible in CalculatorBrain class

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
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
      return 'You have a high body weight. Try to exercise and eat balanced diet.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!!';
    } else {
      return 'You have a lower body weight. Eat more High-fat dairy, fats and oils';
    }
  }
}

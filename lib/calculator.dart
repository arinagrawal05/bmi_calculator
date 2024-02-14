import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  double bmi;
  Calculator({required this.height, required this.weight, required this.bmi});

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher weight than normal. Try to exercise more!';
    } else if (bmi > 18.5) {
      return 'Good job! You have a normal body weight';
    } else {
      return 'You have a lower body weight than normal. Eat a bit more!';
    }
  }
}

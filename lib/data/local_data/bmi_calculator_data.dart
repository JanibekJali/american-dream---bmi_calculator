import 'dart:math' as math;

class BmiCalcultorData {
  // Formula: weight (kg) / [height (m)]2
  static calculateBmi(double weight, double height) {
    final bmiResponse = weight / math.pow(height / 100, 2);
    return bmiResponse;
  }

  static String bmiResult(double bmiResponse) {
    if (bmiResponse >= 25) {
      return 'Семиз';
    } else if (bmiResponse > 18.5) {
      return 'Норма';
    } else {
      return 'Арык';
    }
  }

  static String getDescroption(double bmiResponse) {
    return bmiResponse >= 25
        ? 'Sport menen mashik'
        : bmiResponse > 18.5
            ? 'Uktap jata ber'
            : 'Koburaak tamaktan';
  }
}

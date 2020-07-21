import 'dart:math';

class Prediction {
  String _prediction = 'Party time! Excellent!';
  final Random random = Random();

  String get prediction => _prediction;

  void generatePrediction() {
    int decision = random.nextInt(3);
    if (decision == 0) {
      _prediction = 'Party on, Wayne!';
    } else if (decision == 1) {
      _prediction = 'Party on, Garth!';
    } else if (decision == 2) {
      _prediction = 'Excellent!';
    }
  }
}

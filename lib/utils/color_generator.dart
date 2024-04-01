import 'dart:math' as math;
import 'dart:ui';

/// Generates a random color.
Color colorGenerator() {
  final randomColor = Color.fromRGBO(
    math.Random().nextInt(255),
    math.Random().nextInt(255),
    math.Random().nextInt(255),
    math.Random().nextDouble(),
  );

  return randomColor;
}

import 'package:flutter/material.dart';

/// A widget that displays the color in RGBA format.
class ColorText extends StatelessWidget {
  /// Creates a new instance of the [ColorText] widget.
  const ColorText({required this.color, super.key});

  /// The color to display.
  final Color color;

  @override
  Widget build(BuildContext context) {
    /// The red value of the color.
    final int red = color.red;

    /// The green value of the color.
    final int green = color.green;

    /// The blue value of the color.
    final int blue = color.blue;

    /// The opacity value of the color.
    final double opacity = color.opacity;

    return Text(
      "RGBA($red, $green, $blue, ${opacity.toStringAsFixed(2)})",
    );
  }
}

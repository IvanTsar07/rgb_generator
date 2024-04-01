import 'package:flutter/material.dart';
import 'package:rgb_generator/utils/color_generator.dart';

/// The main page of the app.
class HomePage extends StatefulWidget {
  /// Creates a new instance of the [HomePage] widget.
  const HomePage({required this.title, super.key});

  /// The title of the page.
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? color;

  /// Changes the color of the background.
  void _changeColor() {
    final randomColor = colorGenerator();

    setState(() {
      color = randomColor;
    });
  }

  /// The text widget that displays the current color.
  Widget colorText() {
    /// The red value of the color.
    final int red = color!.red;

    /// The green value of the color.
    final int green = color!.green;

    /// The blue value of the color.
    final int blue = color!.blue;

    /// The opacity value of the color.
    final double opacity = color!.opacity;

    return Text(
      "RGBA($red, $green, $blue, ${opacity.toStringAsFixed(2)})",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _changeColor,
        child: Container(
          key: const Key('main-container'),
          color: color,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello there!'),
              if (color != null) colorText() else const Text(''),
            ],
          ),
        ),
      ),
    );
  }
}

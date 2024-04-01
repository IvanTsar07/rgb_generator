import 'package:flutter/material.dart';
import 'package:rgb_generator/pages/widgets/color_text.dart';
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
              if (color != null)
                ColorText(
                  color: color ?? Colors.white,
                )
              else
                Container(),
            ],
          ),
        ),
      ),
    );
  }
}

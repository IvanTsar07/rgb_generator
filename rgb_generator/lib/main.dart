import 'package:flutter/material.dart';

import 'package:rgb_generator/pages/home_page.dart';

void main() {
  runApp(const App());
}

/// The main app widget.
class App extends StatelessWidget {
  /// Creates a new instance of the [App] widget.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RGB Generator App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'RGB Generator'),
    );
  }
}

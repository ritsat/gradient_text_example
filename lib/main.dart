import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

// Main app container
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gradient Text',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Gradient Text"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientText(
              "Linear Gradient Text",
              style: const TextStyle(fontSize: 40),
              colors: [Colors.blue, Colors.red, Colors.teal],
            ),
            GradientText(
              "Radial Gradient Text",
              style: const TextStyle(fontSize: 40),
              colors: [Colors.blue, Colors.red, Colors.teal],
              gradientType: GradientType.radial,
              radius: 4,
            ),
          ],
        )),
      ),
    );
  }
}

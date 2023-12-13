import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final Map<Color, String> containers = {
    Colors.yellow: "Hello World",
    Colors.red: "Hello World",
    Colors.blue: "Hello World",
    Colors.green: "Hello World",
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: containers.length,
              itemBuilder: (BuildContext context, int index) {
                Color color = containers.keys.elementAt(index);
                String text = containers.values.elementAt(index);
                return HelloContainer(color: color, text: text);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(width: 40, height: 40, color: Colors.grey);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class HelloContainer extends StatelessWidget {
  const HelloContainer({
    super.key,
    required this.color,
    required this.text,
  });
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      color: color,
      child: Text(text),
    );
  }
}

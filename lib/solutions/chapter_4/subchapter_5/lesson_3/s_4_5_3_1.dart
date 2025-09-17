import 'package:flutter/material.dart';

class S4531 extends StatelessWidget {
  const S4531({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColoredContainer(color: Colors.blueGrey),
        ColoredContainer(color: Colors.blue),
        ColoredContainer(color: Colors.cyan)
      ]);
  }
}

class ColoredContainer extends StatelessWidget {
  const ColoredContainer({
    super.key, this.color
  });

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(height: 100, width: 100, color: color);
  }
}

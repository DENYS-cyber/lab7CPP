import 'package:flutter/material.dart';

class V3 extends StatefulWidget {
  const V3({super.key});

  @override
  State<V3> createState() => _V3State();
}

class _V3State extends State<V3> {
  double _red = 100;
  double _green = 150;
  double _blue = 200;

  // Метод для оновлення кольору
  Color get _currentColor =>
      Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Прямокутник із вибраним кольором
        Container(
          width: 150,
          height: 150,
          color: _currentColor,
        ),
        const SizedBox(height: 30),

        // Red
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Red: ', style: TextStyle(fontSize: 16)),
            Text(
              _red.toInt().toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          activeColor: Colors.red,
          value: _red,
          min: 0,
          max: 255,
          onChanged: (value) => setState(() => _red = value),
        ),

        // Green
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Green: ', style: TextStyle(fontSize: 16)),
            Text(
              _green.toInt().toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          activeColor: Colors.green,
          value: _green,
          min: 0,
          max: 255,
          onChanged: (value) => setState(() => _green = value),
        ),

        // Blue
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Blue: ', style: TextStyle(fontSize: 16)),
            Text(
              _blue.toInt().toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          activeColor: Colors.blue,
          value: _blue,
          min: 0,
          max: 255,
          onChanged: (value) => setState(() => _blue = value),
        ),
      ],
    );
  }
}

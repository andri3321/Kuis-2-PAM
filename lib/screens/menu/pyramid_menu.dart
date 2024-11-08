import 'package:flutter/material.dart';

class PyramidMenu extends StatefulWidget {
  @override
  _PyramidMenuState createState() => _PyramidMenuState();
}

class _PyramidMenuState extends State<PyramidMenu> {
  final TextEditingController _baseController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double? _volume;
  double? _perimeter;

  void _calculate() {
    double base = double.parse(_baseController.text);
    double height = double.parse(_heightController.text);

    setState(() {
      _volume = (1 / 3) * base * base * height;
      _perimeter = 4 * base;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Piramida')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan panjang alas'),
            ),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan tinggi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculate,
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            if (_volume != null && _perimeter != null)
              Column(
                children: [
                  Text('Volume: $_volume'),
                  Text('Keliling: $_perimeter'),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

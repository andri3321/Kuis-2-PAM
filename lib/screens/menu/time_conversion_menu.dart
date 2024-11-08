import 'package:flutter/material.dart';

class TimeConversionMenu extends StatefulWidget {
  @override
  _TimeConversionMenuState createState() => _TimeConversionMenuState();
}

class _TimeConversionMenuState extends State<TimeConversionMenu> {
  final TextEditingController _timeController = TextEditingController();
  String? _result;

  void _convertTime() {
    int time = int.parse(_timeController.text);
    setState(() {
      _result = 'WIB: ${time} \nWITA: ${time + 1} \nWIT: ${time + 2}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Konversi Waktu')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _timeController,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Masukkan waktu dalam jam'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertTime,
              child: Text('Konversi'),
            ),
            SizedBox(height: 20),
            if (_result != null) Text(_result!),
          ],
        ),
      ),
    );
  }
}

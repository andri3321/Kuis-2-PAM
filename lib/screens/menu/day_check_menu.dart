import 'package:flutter/material.dart';

class DayCheckMenu extends StatefulWidget {
  @override
  _DayCheckMenuState createState() => _DayCheckMenuState();
}

class _DayCheckMenuState extends State<DayCheckMenu> {
  final TextEditingController _dayController = TextEditingController();
  String? _day;

  void _checkDay() {
    int input = int.parse(_dayController.text);
    List<String> days = [
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
      'Minggu'
    ];

    setState(() {
      _day = (input >= 1 && input <= 7) ? days[input - 1] : 'Input tidak valid';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cek Hari')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _dayController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan angka (1-7)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkDay,
              child: Text('Cek Hari'),
            ),
            SizedBox(height: 20),
            if (_day != null) Text('Hari: $_day'),
          ],
        ),
      ),
    );
  }
}

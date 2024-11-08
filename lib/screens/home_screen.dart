import 'package:flutter/material.dart';
import 'menu/pyramid_menu.dart';
import 'menu/time_conversion_menu.dart';
import 'menu/day_check_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text('Piramida'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PyramidMenu()),
              );
            },
          ),
          ListTile(
            title: Text('Konversi Waktu'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimeConversionMenu()),
              );
            },
          ),
          ListTile(
            title: Text('Cek Hari'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DayCheckMenu()),
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/profile.jpg'), // Pastikan Anda memiliki gambar ini
              ),
            ),
            SizedBox(height: 20),
            Text('Nama: Andri'),
            Text('NIM: 124220036'),
            Text('Tempat, Tanggal Lahir: Palembang, 23 Oktober 2004'),
            Text('Hobi: Belajar'),
          ],
        ),
      ),
    );
  }
}

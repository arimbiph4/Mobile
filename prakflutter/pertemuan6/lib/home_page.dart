import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDEFF4), // pink pastel background
      appBar: AppBar(
        title: Text('🌼 Halaman Utama'),
        backgroundColor: const Color.fromARGB(255, 236, 163, 188),
        elevation: 4,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.school, size: 80, color: const Color.fromARGB(255, 236, 178, 198)),
            SizedBox(height: 20),
            Text(
              'Selamat Datang, Arimbi!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 103, 175, 104),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Siap eksplor dunia perkuliahan dengan gaya ',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              icon: Icon(Icons.arrow_forward),
              label: Text('Ke Profil Mahasiswa'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 110, 156, 111),
                foregroundColor: const Color.fromARGB(255, 241, 195, 210),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

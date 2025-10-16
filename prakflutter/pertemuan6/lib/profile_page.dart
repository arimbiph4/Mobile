import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final List<String> mataKuliah = [
    '📱 Pemrograman Mobile',
    '🔍 Audit Sistem Informasi',
    '🧩 Perancangan Sumber Daya',
    '🚚 Manajemen Rantai Pasok',
    '📊 Manajemen Proyek Sistem Informasi',
    '🧠 Kecerdasan Bisnis',
    '🦺 Kesehatan & Keselamatan Kerja',
    '📝 Metode Penelitian',
    '✅ Penjaminan Mutu Perangkat Lunak',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 173, 198), // pink pastel
      appBar: AppBar(
        title: Text('🌸 Profil Mahasiswa'),
        backgroundColor: Color(0xFFECA4B4),
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFF0F5),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: const Color.fromARGB(255, 239, 170, 194), blurRadius: 6)],
              ),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/pic2.jpeg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Arimbi Putri Hapsari',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 134, 209, 137))),
                      Text(' Mahasiswa Sistem Informasi Bisnis',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                              fontStyle: FontStyle.italic)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('🎓 Mata Kuliah Semester 5',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 81, 121, 82))),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFBFA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListView.builder(
                  itemCount: mataKuliah.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.pink[50],
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: ListTile(
                        title: Text(
                          mataKuliah[index],
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/gallery'),
              icon: Icon(Icons.photo_album),
              label: Text('✨ Lihat Galeri'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 95, 148, 98),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

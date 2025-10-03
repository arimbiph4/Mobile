// import 'package:flutter/material.dart';

// void main() {
//   runApp(ArimbiApp());
// }

// class ArimbiApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Arimbi App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "Balonku ada 5",
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//               fontFamily: 'Arial',
//             ),
//           ),
//           backgroundColor: Colors.blue,
//           centerTitle: false,
//           foregroundColor: Colors.white,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "Balonku ada 5\nRupa-rupa warnanya\nHijau, kuning, kelabu\nMerah muda dan biru",
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 fontFamily: 'Arial',
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               "Meletus balon hijau\nHatiku sangat kacau\nBalonku tinggal 4\nKupegang erat-erat",
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.grey[700],
//                 fontFamily: 'Arial',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(ArimbiApp());  //Menjalankan aplikasi dengan widget ArimbiApp
}


class ArimbiApp extends StatelessWidget {       //Membuat class ArimbiApp, turunan dari StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(           //Untuk membungkus aplikasi dengan gaya Material Design dan sebagai root widget.
      title: "Arimbi App",
      home: Scaffold(            //Memberikan struktur dasar tampilan aplikasi, seperti AppBar, body, dan background.
        appBar: AppBar(
          title: Text(
            "Tak Kan Pernah Ada",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Arial',
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 225, 114, 151),
          centerTitle: true,                  //Supaya judul di AppBar otomatis ditaruh di tengah layar
          foregroundColor: Colors.white,    //Warna ikon/teks di AppBar putih
        ),
        body: Container(
          color: Colors.deepOrangeAccent, // background
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(       //Supaya isi bisa discroll kalau panjang
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end, // Supaya lirik terlihat rata kanan sesuai instruksi
              children: [
                Text(
                  "[Verse 1]\n"
                  "Dia, memang hanya dia\n"
                  "Ku selalu memikirkannya\n"
                  "Tak pernah ada habisnya\n"
                  "Benar dia, benar hanya dia\n"
                  "Ku selalu menginginkannya\n"
                  "Belaian dari tangannya\n"
                  "Mungkin hanya dia\n"
                  "Harta yang paling terindah\n"
                  "Di perjalanan hidupku\n"
                  "Sejak derap denyut nadiku\n"
                  "Mungkin hanya dia\n"
                  "Indahnya sangat berbeda\n"
                  "Ku haus merindukannya",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Arial',
                  ),
                ),
                SizedBox(height: 30),         //Untuk memberi jarak antar bagian teks (verse dan chorus)
                Text(
                  "[Chorus]\n"
                  "Ku ingin kau tahu isi hatiku\n"
                  "Kaulah yang terakhir dalam hidupku\n"
                  "Tak ada yang lain hanya kamu\n"
                  "Tak pernah ada\n"
                  "Takkan pernah ada",
                  textAlign: TextAlign.right,     //Teks rata kanan(left kiri, right kanan)
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontFamily: 'Arial',
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "[Verse 2]\n"
                  "Benar dia, benar hanya dia\n"
                  "Ku selalu menginginkannya\n"
                  "Belaian dari tangannya\n"
                  "Mungkin hanya dia\n"
                  "Indahnya sangat berbeda\n"
                  "Ku haus merindukannya",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Arial',
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "[Chorus]\n"
                  "Ku ingin kau tahu isi hatiku\n"
                  "Kaulah yang terakhir dalam hidupku\n"
                  "Tak ada yang lain hanya kamu\n"
                  "Tak pernah ada\n"
                  "Takkan pernah ada\n"
                  "Ku ingin kau selalu di pikiranku\n"
                  "Kau yang selalu larut dalam darahku\n"
                  "Tak ada yang lain\n"
                  "Hanya kamu\n"
                  "Tak pernah ada\n"
                  "Takkan pernah ada",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontFamily: 'Arial',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

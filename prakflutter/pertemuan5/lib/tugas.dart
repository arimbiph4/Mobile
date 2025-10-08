import 'package:flutter/material.dart';

void main() {
  runApp(ArimbiApp());
}

// ==========================
// Widget utama aplikasi
// ==========================
class ArimbiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Roboto',
      ),
      home: MainPage(),
    );
  }
}

// ==========================
// Halaman utama dengan Drawer + BottomNavigationBar
// ==========================
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ProfilePage(),
    CounterPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateFromDrawer(int index) {
    Navigator.pop(context);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedIndex == 0 ? 'Profil Mahasiswa' : 'Counter App'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 237, 80, 132),
      ),

      // ==========================
      // Drawer: header tengah, menu kiri
      // ==========================
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 237, 80, 132),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/profile.jpeg'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Arimbi Putri Hapsari',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Putriarimbi714@gmail.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // ✅ Menu dibuat rata kiri (normal)
            ListTile(
              leading: const Icon(Icons.person, color: Colors.pink),
              title: const Text('Profil'),
              onTap: () => _navigateFromDrawer(0),
            ),
            ListTile(
              leading: const Icon(Icons.countertops, color: Colors.pink),
              title: const Text('Counter'),
              onTap: () => _navigateFromDrawer(1),
            ),
          ],
        ),
      ),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.countertops),
            label: 'Counter',
          ),
        ],
      ),
    );
  }
}

// ==========================
// Halaman Profil
// ==========================
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 247, 165, 192),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FlutterLogo(size: 50),
          const SizedBox(height: 20),
          ClipOval(
            child: Image.asset(
              'assets/profile.jpeg',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Placeholder(fallbackHeight: 120, fallbackWidth: 120),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Arimbi Putri Hapsari',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Text(
            'NIM: 2341760016',
            style: TextStyle(fontSize: 18),
          ),
          const Text(
            'Jurusan: Teknologi Informasi',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.email, color: Color.fromARGB(255, 188, 25, 14)),
              SizedBox(width: 8),
              Text('Putriarimbi714@gmail.com'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.phone, color: Color.fromARGB(255, 12, 166, 17)),
              SizedBox(width: 8),
              Text('085852763041'),
            ],
          ),
        ],
      ),
    );
  }
}

// ==========================
// Halaman Counter
// ==========================
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increment() => setState(() => _counter++);
  void _decrement() => setState(() => _counter--);
  void _reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 166, 195),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increment,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 192, 203),
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('+'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _decrement,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 192, 203),
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('-'),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: _reset,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 248, 99, 149),
                    side: BorderSide(color: Color.fromARGB(255, 248, 99, 149)),
                  ),
                  child: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        backgroundColor: const Color.fromARGB(255, 176, 149, 255),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'pages/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 221, 146),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/img/avatar.png'),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Hallo, $username',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Selamat Pagi',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Image.asset('assets/img/banner.webp'), // Banner image
            const SizedBox(height: 20),
            _buildFoodItem(
                'Nasi Ayam', 'Rp10.000', 'assets/img/nasi-ayam.jpeg'),
            _buildFoodItem(
                'Nasi Rendang', 'Rp15.000', 'assets/img/nasi-rendang.jpeg'),
            _buildFoodItem(
                'Gulai Cincang', 'Rp11.000', 'assets/img/gulai-cincang.jpeg'),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(String name, String price, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        children: [
          Image.asset(imagePath, height: 50, width: 50),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              Text(price, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}

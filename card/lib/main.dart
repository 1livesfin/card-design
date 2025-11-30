import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEAEA),
      body: Center(                // <-- MEMBUAT SEMUA KONTEN DI TENGAH
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MenuCard(
                title: "Title Menu 1",
                titleColor: Colors.red,
                iconColor: Colors.red,
                circleColor: Color(0xFFFFE5E5),
              ),
              SizedBox(height: 30),
              MenuCard(
                title: "Title Menu 2",
                titleColor: Colors.blue,
                iconColor: Colors.blue,
                circleColor: Color(0xFFE6F0FF),
              ),
              SizedBox(height: 30),
              MenuCard(
                title: "Title Menu 3",
                titleColor: Colors.green,
                iconColor: Colors.green,
                circleColor: Color(0xFFE9FFE8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color iconColor;
  final Color circleColor;

  const MenuCard({
    super.key,
    required this.title,
    required this.titleColor,
    required this.iconColor,
    required this.circleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: circleColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.grid_view_rounded,
              color: iconColor,
              size: 35,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
git
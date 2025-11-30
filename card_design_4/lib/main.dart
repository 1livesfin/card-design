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
      home: const WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e5e5),
      body: Center( // >>>>> ini untuk men-center semua
        child: SingleChildScrollView(
          child: Column(
            children: const [
              WeatherCard(
                image: "assets/images/rain.png",
                location: "Cianjur",
                wind: "250",
                temp: "17",
                humid: "27%",
              ),
              SizedBox(height: 25),
              WeatherCard(
                image: "assets/images/cloud.png",
                location: "Jakarta",
                wind: "367",
                temp: "14",
                humid: "25%",
              ),
              SizedBox(height: 25),
              WeatherCard(
                image: "assets/images/sun.png",
                location: "Bandung",
                wind: "300",
                temp: "20",
                humid: "15%",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  final String image;
  final String location;
  final String wind;
  final String temp;
  final String humid;

  const WeatherCard({
    super.key,
    required this.image,
    required this.location,
    required this.wind,
    required this.temp,
    required this.humid,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 8,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Row(
        children: [
          // ICON
          Image.asset(
            image,
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 12),

          // TEXT CONTENT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                // INFO ROW (Wind / Temp / Humid)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WeatherInfo(title: "Wind", value: wind),
                    WeatherInfo(title: "Temp", value: temp),
                    WeatherInfo(title: "Humidt", value: humid),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherInfo extends StatelessWidget {
  final String title;
  final String value;

  const WeatherInfo({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

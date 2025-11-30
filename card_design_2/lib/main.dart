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
      home: const FoodPage(),
    );
  }
}

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEAEA),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              FoodCard(
                title: "Food Title 1",
                price: "Rp. 10.000",
                rating: 4.7,
              ),
              SizedBox(height: 18),
              FoodCard(
                title: "Food Title 2",
                price: "Rp. 12.000",
                rating: 4.5,
              ),
              SizedBox(height: 18),
              FoodCard(
                title: "Food Title 3",
                price: "Rp. 15.000",
                rating: 4.8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String title;
  final String price;
  final double rating;

  const FoodCard({
    super.key,
    required this.title,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 8,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE from assets
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              "assets/images/ayam_goreng.jpg",
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // TEXT & PRICE & RATING
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
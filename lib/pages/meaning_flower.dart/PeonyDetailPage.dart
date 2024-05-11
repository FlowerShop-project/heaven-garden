import 'package:flutter/material.dart';

class PeonyDetailPage extends StatelessWidget {
  const PeonyDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Image.asset(
                      'lib/image/details/PEONY.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "PEONY",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          const Icon(Icons.circle, color: Colors.red, size: 16),
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.pink[100], size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.white, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.yellow, size: 16),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "The peony is adored worldwide for its delicate petals and rich fragrance. With their beauty and low maintenance, they're a cherished addition to gardens and bouquets, lasting for a long time effortlessly.",
                        style: TextStyle(color: Colors.grey, height: 1.4),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Care Tips",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Trim stems diagonally for better water absorption. Remove submerged foliage to prevent bacterial growth. Change water every two days to keep them fresh. Keep peonies away from direct sunlight and heat.",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Price",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "\$23 ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "* To see meaning of other colour you can click more details at flower details page! * ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(height: 120),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

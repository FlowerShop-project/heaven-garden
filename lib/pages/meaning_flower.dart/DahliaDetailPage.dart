<<<<<<< HEAD
import 'package:flutter/material.dart';

class DahliaDetailPage extends StatelessWidget {
  const DahliaDetailPage({super.key});

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
                      'lib/image/details/DAHLIA.jpg',
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
                        "DAHLIA",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          const Icon(Icons.circle, color: Colors.white, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.yellow, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.green, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.red, size: 16),
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.pink[400], size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.black, size: 16),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Dahlias are one of the most sought-after flowers come summertime. These colourful, vibrant, show-stealing blooms make wonderful additions to bouquets and also to our gardens by the time December comes around.",
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
                        "Use a clean vase, preferably made of glass. Cut the stem 2-5 cm with a clean, sharp knife or secateurs. Use Chrysal Better Bloom flower food to keep your dahlia fresh and beautiful the longest. Keep flowers away from draft, heat and direct sunlight.",
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
                        "\$18 ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      //
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
=======
import 'package:flutter/material.dart';

class DahliaDetailPage extends StatelessWidget {
  const DahliaDetailPage({super.key});

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
                      'lib/image/details/DAHLIA.jpg',
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
                        "DAHLIA",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          const Icon(Icons.circle,
                              color: Colors.white, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle,
                              color: Colors.yellow, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle,
                              color: Colors.green, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.red, size: 16),
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.pink[400], size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle,
                              color: Colors.black, size: 16),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Dahlias are one of the most sought-after flowers come summertime. These colourful, vibrant, show-stealing blooms make wonderful additions to bouquets and also to our gardens by the time December comes around.",
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
                        "Use a clean vase, preferably made of glass. Cut the stem 2-5 cm with a clean, sharp knife or secateurs. Use Chrysal Better Bloom flower food to keep your dahlia fresh and beautiful the longest. Keep flowers away from draft, heat and direct sunlight.",
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
                        "\$18 ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      //
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
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74

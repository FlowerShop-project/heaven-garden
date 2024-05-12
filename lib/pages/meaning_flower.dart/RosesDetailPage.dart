<<<<<<< HEAD
import 'package:flutter/material.dart';

class RosesDetailPage extends StatelessWidget {
  const RosesDetailPage({super.key});

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
                      'lib/image/details/ROSES.jpg',
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
                        "ROSES",
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
                          const Icon(Icons.circle, color: Colors.black, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.blue, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.purple, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.green, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.yellow, size: 16),
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.pink[400], size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.white, size: 16),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Roses are a symbol of love and romance. They come in various colors, each representing different sentiments.",
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
                        "To keep roses fresh, cut the stems at an angle and place them in a vase with water. Remove any leaves that will be submerged in water to prevent bacterial growth. Change the water every two days and keep the roses away from direct sunlight and heat sources.",
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
                        "\$25 ",
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
=======
import 'package:flutter/material.dart';

class RosesDetailPage extends StatelessWidget {
  const RosesDetailPage({super.key});

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
                      'lib/image/details/ROSES.jpg',
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
                        "ROSES",
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
                          const Icon(Icons.circle, color: Colors.black, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.blue, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.purple, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.green, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.yellow, size: 16),
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.pink[400], size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.white, size: 16),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Roses are a symbol of love and romance. They come in various colors, each representing different sentiments.",
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
                        "To keep roses fresh, cut the stems at an angle and place them in a vase with water. Remove any leaves that will be submerged in water to prevent bacterial growth. Change the water every two days and keep the roses away from direct sunlight and heat sources.",
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
                        "\$25 ",
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
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74

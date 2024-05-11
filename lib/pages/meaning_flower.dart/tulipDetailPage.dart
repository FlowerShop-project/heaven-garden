import 'package:flutter/material.dart';

class TulipDetailPage extends StatelessWidget {
  const TulipDetailPage({super.key});

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
                      'lib/image/details/TULIP.jpg',
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
                        "TULIP",
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
                          Icon(Icons.circle, color: Colors.pink[300], size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.purple, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.yellow, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.white, size: 16),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Tulips, beyond their beauty, convey emotions through various colors and types. They symbolize love, beauty, and elegance, making them popular symbols of affection and admiration. Acting as messengers for unspoken emotions, tulips have been utilized for ages to express a myriad of feelings.",
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
                        "Trim tulip stems, place in clean water, remove submerged leaves, change water every two days, and keep away from sunlight/heat to maintain freshness and prevent wilting.",
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
                        "\$16 ",
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

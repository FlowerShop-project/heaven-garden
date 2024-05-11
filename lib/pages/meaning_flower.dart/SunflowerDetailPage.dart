import 'package:flutter/material.dart';

class SunflowerDetailPage extends StatelessWidget {
  const SunflowerDetailPage({super.key});

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
                      'lib/image/details/SUNFLOWER.jpg',
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
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Sunflower",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 0),

                      SizedBox(height: 10),
                      Text(
                        "Sunflowers are often associated with happiness, positivity, and warmth. Their bright yellow petals resemble the sun, hence the name. Sunflowers are known to symbolize loyalty, adoration, and longevity.",
                        style: TextStyle(color: Colors.grey, height: 1.4),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Care Tips",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "To keep sunflowers fresh, trim stems at an angle and place in a vase with water. Remove submerged leaves to prevent bacteria. Change water every 2 days. Keep away from direct sunlight and heat.",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Price",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "\$15 ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      //
                      SizedBox(height: 20),
                      SizedBox(height: 120),
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

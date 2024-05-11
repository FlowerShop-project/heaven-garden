import 'package:flutter/material.dart';

class FMNDetailPage extends StatelessWidget {
  const FMNDetailPage({super.key});

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
                      'lib/image/details/FMN.jpg',
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
                        "Forget me not",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 0),

                      SizedBox(height: 10),
                      Text(
                        "Forget-me-nots are small, delicate flowers that are often associated with remembrance, love, and faithfulness. Their tiny blue petals symbolize enduring love and memories that are cherished forever. Forget-me-nots are known to represent true love, loyalty, and the everlasting bonds between individuals.",
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
                        "To care for forget-me-nots and keep them vibrant, start by trimming their stems at an angle and placing them in a vase filled with fresh water. It's essential to remove any leaves that would be submerged in water to prevent bacterial growth. Remember to change the water every two days to maintain freshness. Additionally, forget-me-nots thrive in cool temperatures, so it's best to keep them away from direct sunlight and excessive heat to prolong their lifespan.",
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

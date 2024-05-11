import 'package:flutter/material.dart';

class DaisyDetailPage extends StatelessWidget {
  const DaisyDetailPage({super.key});

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
                      'lib/image/details/DAISY.jpg',
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
                        "DAISY",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "These sunny springtime blooms have several positive meanings. The meaning of a daisy flower can be purity, innocence, new beginnings, joy and cheerfulness. In the Victorian Era, daisies symbolised innocence, loyalty and an ability to keep things secret. You could give someone a posy of daisies, and in the language of flowers (floriography), this could be taken to mean their secret was safe with you.",
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
                        "Help your daisies live their best life and keep them out of direct sunlight and extreme heat. Unlike in the field, cut flowers don't love sunshine or heat - in fact, both can dramatically shorten their lifespan in the vase. Remember: that sunny windowsill is off limits!",
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
                        "\$10 ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "* To see meaning of other colour you can click more details at flower details page! * ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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

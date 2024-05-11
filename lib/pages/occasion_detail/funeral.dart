import 'package:flutter/material.dart';

class FuneralPage extends StatelessWidget {
  FuneralPage({Key? key}) : super(key: key);

  final List<String> funeralImages = [
    'lib/image/funeral/1.png',
    'lib/image/funeral/2.png',
    'lib/image/funeral/3.png',
    'lib/image/funeral/4.png',
    'lib/image/funeral/5.png',
    'lib/image/funeral/6.png',
  ];

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
                    SizedBox(
                      height: 400, // Adjust the height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: funeralImages.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 400, // Adjust the width as needed
                              child: Image.asset(
                                funeralImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
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
                        "Funeral ⚰️",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Losing a loved one is hard. Flowers offer comfort during grief. Our guide helps you choose appropriate funeral flowers and navigate etiquette sensitively.",
                        style: TextStyle(color: Colors.grey, height: 1.4),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Suggestion flower",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🕊️ Lilies ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ":As one of the most popular floral choices for funerals, lilies represent the restored innocence of the soul of the departed.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🕊️ Chrysanthemums ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ":In Europe, chrysanthemums symbolize death and are mainly used for funerals. However, in the US, they represent truth and are seen as a cheerful tribute to a life well-lived.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🕊️ Orchids ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ":Pink and white orchids convey sympathy and symbolize eternal love. Phalaenopsis and dendrobium orchids are the most suitable choices for sympathy flowers.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🕊️ Gladioli ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ":Tall and majestic, gladioli convey strength of character, moral integrity and sincerity.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🕊️ Carnations ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ":White carnations convey pure love and innocence; red carnations represent admiration; and pink carnations stand for remembrance.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🕊️ Roses ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ":White roses signify reverence, innocence, and youthfulness; Red roses express respect, love, and courage; Pink roses symbolize love, grace, and gentleness; Crimson roses denote grief and sorrow; Yellow roses represent friendship. ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
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

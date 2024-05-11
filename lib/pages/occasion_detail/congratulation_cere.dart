import 'package:flutter/material.dart';

class CeremonyPage extends StatelessWidget {
  CeremonyPage({Key? key}) : super(key: key);

  final List<String> funeralImages = [
    'lib/image/Congratulation/1.png',
    'lib/image/Congratulation/2.png',
    'lib/image/Congratulation/3.png',
    'lib/image/Congratulation/4.png',
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
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
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
                        "Congratulation ceremony",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Celebrating loved ones' achievements is natural to us. Flowers make ideal gifts, especially when we can't be there in person. Discover popular options for congratulatory blooms or browse our selection below.",
                        style: TextStyle(color: Colors.grey, height: 1.4),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Example Occasion",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "- Birthday🎂                 - Graduation🎓",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "- Promotions📈           - Pregnancies and births🍼",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "For Birthday🎂",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Recognizing birthdays at the office can be heartwarming, even if some people aren't big on celebrating. A mixed flower bouquet, an e-card, or a handwritten note can brighten a co-worker's day. Opt for mild-fragrance flowers and check for pollen allergies beforehand.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Suggestion flower ❀˖ °",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Roses                  - Carnations",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Daisies                - Lilies",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 1),
                      Text(
                        "*Need look carefully for meaning for each colour*",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      //Gifting Your Associates 🤝🏻
                      Text(
                        "------------------------------------------------ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 15),
                      Text(
                        "Graduation🎓",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Graduating from high school, university or from any kind of study or training program is a major life achievement, and flowers are a perfect gift to congratulate the graduate. Plus, the bouquet will make a lovely accessory as they’re posing for their graduation photos.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Suggestion flower ❀˖ °",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Calla Lilies             - Roses",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- White carnations",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 1),
                      Text(
                        "*Need look carefully for meaning for each colour*",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "------------------------------------------------ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Promotions📈",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Our careers are a big part of our lives, so it makes sense to celebrate and congratulate someone when something good happens for them in this arena. ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Suggestion flower ❀˖ °",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Yellow poppies              - Daffodil",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Jasmine                         - Irises",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Roses                             - Heather",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),

                      Text(
                        "------------------------------------------------ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Pregnancies and births🍼",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "The joy of bringing new life into the world is second to none. Share in that joy and congratulate the new or soon-to-be parents with a beautiful bunch of flowers.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Suggestion flower ❀˖ °",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Mums(chrysanthemums)             - Carnations",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Pink Roses",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      //Gifting Your Associates 🤝🏻
                      Text(
                        "------------------------------------------------ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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

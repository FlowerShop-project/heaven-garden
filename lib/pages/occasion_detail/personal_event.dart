import 'package:flutter/material.dart';

class PersonalPage extends StatelessWidget {
  PersonalPage({Key? key}) : super(key: key);

  final List<String> funeralImages = [
    'lib/image/personal_use/1.png',
    'lib/image/personal_use/2.png',
    'lib/image/personal_use/3.png',
    'lib/image/personal_use/4.png',
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
                        "Personal use 👫",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Adding a touch of nature's beauty to your everyday life. Explore our curated selection of flowers to brighten your home and lift your spirits. Let us guide you in choosing the perfect blooms for any occasion, making every moment a little more vibrant.",
                        style: TextStyle(color: Colors.grey, height: 1.4),
                      ),
                      SizedBox(height: 25),
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
                        "- Anniversary👩🏻‍❤️‍💋‍👨🏻             - Dates💝",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "- Valentine Day🌹          - Mother's Day🤱🏻",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),

                      SizedBox(height: 15),
                      Text(
                        "Anniversary 👩🏻‍❤️‍💋‍👨🏻 ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Traditional flowers symbolize marital years. Choose anniversary flower or favorites. Opt for mixed bouquets or single stems, add a personal note, chocolates, or candles.",
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
                        "- Carnetions     - Daisy",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- Daffodils        - Aster   ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- Lilies              - Gladiolus   ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),

                      SizedBox(height: 5),
                      //Dates
                      Text(
                        "------------------------------------------------ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25),

                      Text(
                        "Dates💝 ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Special dates without a loved one can be hard. Our guide, like comforting flowers, helps you navigate with care.",
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
                        "- Lilies             -Roses",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "- Tulips",
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
                      //valentine
                      Text(
                        "------------------------------------------------ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25),

                      Text(
                        "Valentine Day🌹  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Finding the right Valentine's Day flowers can be tricky. Let us guide you to the perfect bouquet, expressing your love effortlessly.",
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
                        "- Roses",
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
                      SizedBox(height: 5),
                      //Dates
                      Text(
                        "------------------------------------------------ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25),
                      //Mother's Day🤱🏻
                      Text(
                        "Mother's Day🤱🏻",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Celebrate with flowers, a timeless expression of love and gratitude. Our guide helps you choose the perfect blooms to honor the nurturing souls in your life.🌸",
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
                        "- Lilies             -Jusmine",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),

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

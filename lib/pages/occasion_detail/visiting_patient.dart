import 'package:flutter/material.dart';

class VisitingPatientPage extends StatelessWidget {
  VisitingPatientPage({Key? key}) : super(key: key);

  final List<String> funeralImages = [
    'lib/image/visiting_patients/1.png',
    'lib/image/visiting_patients/2.png',
    'lib/image/visiting_patients/3.png',
    'lib/image/visiting_patients/4.png',
    'lib/image/visiting_patients/5.png',
    'lib/image/visiting_patients/6.png',
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
                        "Visiting patients 🏥",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Perhaps it’s just getting back to our evolutionary roots that we find being outside among the trees and the grass so relaxing. Just 20 minutes in touch with Nature can do the trick. Researchers have also found that it’s an essential component of everyday well-being, whether it’s the beach or the local park. It’s no wonder then that flowers are so welcome if you’re in the hospital for any length of time.",
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
                        "🤒 Daisies ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ":Daisies symbolize innocence and love, reflecting your care. Sending a bouquet via our hospital delivery shows support. Add a heartfelt note like 'Thank you for being my daisy'.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🤒 Mums ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ":Mums symbolize devoted love and loyalty, perfect for hospital wishes. Each color carries unique meaning. Consider allergies and hospital policies before sending.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🤒 Sunflower ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ":Send sunflowers for a cheerful wish of recovery. Symbolizing adoration and hope, they bring joy even from afar. Add a personal touch with a heartfelt message like 'You are my sunshine'.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🤒 Lilies ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ":Lilies, elegant and graceful, symbolize humility and strength. A lily bouquet is a tribute to resilience and a meaningful gift for hospital recovery.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🤒 Carnations ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ":Carnations are perfect get-well flowers for hospitals. Their vibrant colors uplift spirits: red for admiration, white for pure love, and pink for maternal love. Choose wisely; each petal is a wish for their swift recovery.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "🤒 Roses ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ":Send roses to the hospital for timeless elegance and care. Red for love, pink for gratitude, yellow for happiness. Let your bouquet speak volumes.",
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

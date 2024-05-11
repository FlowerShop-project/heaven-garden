import 'package:flutter/material.dart';

class OrganizationPage extends StatelessWidget {
  OrganizationPage({Key? key}) : super(key: key);

  final List<String> funeralImages = [
    'lib/image/organization/1.png',
    'lib/image/organization/3.png',
    'lib/image/organization/2.png',
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
                        "Organization 🗂️",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Most people spend a lot of their time at work, where they develop platonic, professional, and personal friendships. There is a fine line that should not be crossed when sending corporate gifts; it should be maintained and respected. Here are the unwritten rules of sending corporate flowers as gifts.",
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
                        "- For Team Members 👥",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "- Flowers For Client / Business Partner 🤝🏻",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "- Flowers for the Boss 🗣️",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "For Team member👥",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Flower bouquets of yellow roses, peonies, daisies, or tulips express workplace sincerity the best. For those with allergies, you should place your trust in potted plants. If you’re looking for a thoughtful and personal gift for your team member or co-worker, consider sending a fresh bouquet of colorful flowers. ",
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
                        "- Yellow roses             - Tuip",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Daisy                         - Peony",
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

                      SizedBox(height: 15),
                      Text(
                        "Flowers For Client / Business Partner 🤝🏻",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "When gifting flowers to business partners or clients, keep it professional. Avoid red roses and overly expensive gifts. Stay away from personal touches unless you have a long-standing relationship. Opt for carefully curated bouquets of daisies or orchids, coupled with practical gifts like sweets, fruit baskets, or premium company commodities.",
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
                        "- White/Cream roses             - Lily",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Orchids",
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
                        "Flowers for the Boss 🗣️",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "For the best boss, choose flowers that convey appreciation without romantic connotations. It's best to gift as a team rather than individually, unless there's a personal relationship. Avoid red roses and any other potentially misinterpreted flowers.",
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
                        "- Yellow gerbera             - Daisy",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "- Peony                            - Lily",
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

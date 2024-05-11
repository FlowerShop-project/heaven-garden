import 'package:flowershop/pages/flower_details/image_detail_daisy.dart';
import 'package:flowershop/pages/flower_details/image_detail_hdg.dart';

import 'package:flowershop/pages/flower_details/image_detail_lily.dart';
import 'package:flowershop/pages/flower_details/image_detail_peony.dart';
import 'package:flowershop/pages/flower_details/image_details_dahlia.dart';
import 'package:flowershop/pages/flower_details/image_details_tulip.dart';
import 'package:flowershop/pages/meaning_flower.dart/DahliaDetailPage.dart';
import 'package:flowershop/pages/meaning_flower.dart/HDGDetailPage.dart';

import 'package:flowershop/pages/meaning_flower.dart/PeonyDetailPage.dart';
import 'package:flowershop/pages/meaning_flower.dart/fmnDetail.dart';
import 'package:flowershop/pages/meaning_flower.dart/tulipDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/flower.dart';
import 'flower_details/image_detail_rs.dart';
import 'flower_details/image_details_fmn.dart';
import 'meaning_flower.dart/DaisyDetailPage.dart';
import 'meaning_flower.dart/LilyDetailPage.dart';
import 'meaning_flower.dart/RosesDetailPage.dart';
import 'meaning_flower.dart/SunflowerDetailPage.dart';
import 'flower_details/image_details_sf.dart';

class FlowerDetailsPage extends StatelessWidget {
  const FlowerDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Cart cart = Provider.of<Cart>(context);
    List<Flower> flowerFlower = cart.flowerFlower;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 245, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 220, 100, 154),
        elevation: 0,
        title: const Text(
          'Flowers Details 🌺',
          style: TextStyle(
            color: Color.fromARGB(255, 163, 21, 78),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 194, 24, 91),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row for Roses and Sunflower
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Roses
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: Column(
                        children: [
                          GestureDetector(
                            // Make the image clickable
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const RosesDetailPage(), // Navigate to RosesDetailPage
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                flowerFlower[0].imagePath,
                                width: 200,
                                height: 200,
                                fit: BoxFit
                                    .cover, // Ensure the image fits the box
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '  Roses',
                              style: TextStyle(
                                color: Colors.pink[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ImageDetailRs(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.pink[400],
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                child: const Text(
                                  'More Details',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Sunflower
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SunflowerDetailPage(), // Navigate to Sunflower detail page
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                flowerFlower[1].imagePath,
                                width: 200,
                                height: 200,
                                fit: BoxFit
                                    .cover, // Ensure the image fits the box
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '  Sunflower',
                                style: TextStyle(
                                  color: Colors.pink[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ImageDetailPage(
                                          images: [flowerFlower[1].imagePath]),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[400],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    'More Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Row for Forget Me Not and Lily
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Forget Me Not
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FMNDetailPage()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                flowerFlower[2].imagePath,
                                width: 200,
                                height: 200,
                                fit: BoxFit
                                    .cover, // Ensure the image fits the box
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Forget me not',
                                style: TextStyle(
                                  color: Colors.pink[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ImageDetailPageFMN(
                                          images: [flowerFlower[1].imagePath]),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[400],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    'More Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Lily
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LilyDetailPage()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                flowerFlower[3].imagePath,
                                width: 200,
                                height: 200,
                                fit: BoxFit
                                    .cover, // Ensure the image fits the box
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '  Lily',
                                style: TextStyle(
                                  color: Colors.pink[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ImageDetailPageLily(
                                          // images: [flowerFlower[1].imagePath]
                                          ),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[400],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    'More Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Row for Peony Me Not and Tulip
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Peony
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PeonyDetailPage()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                flowerFlower[4].imagePath,
                                width: 200,
                                height: 200,
                                fit: BoxFit
                                    .cover, // Ensure the image fits the box
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '  Peony',
                                style: TextStyle(
                                  color: Colors.pink[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ImageDetailPagePeony(
                                          // images: [flowerFlower[1].imagePath]
                                          ),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[400],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    'More Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Tulip
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TulipDetailPage()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                flowerFlower[5].imagePath,
                                width: 200,
                                height: 200,
                                fit: BoxFit
                                    .cover, // Ensure the image fits the box
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '  Tulip',
                                style: TextStyle(
                                  color: Colors.pink[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ImageDetailPageTulip(
                                          // images: [flowerFlower[1].imagePath]
                                          ),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[400],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    'More Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Row for Dahila and daisy
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Dahila
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DahliaDetailPage()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                flowerFlower[6].imagePath,
                                width: 200,
                                height: 200,
                                fit: BoxFit
                                    .cover, // Ensure the image fits the box
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '  Dahlia',
                                style: TextStyle(
                                  color: Colors.pink[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ImageDetailPageDahlia(
                                          // images: [flowerFlower[1].imagePath]
                                          ),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[400],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    'More Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Daisy
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DaisyDetailPage()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                flowerFlower[7].imagePath,
                                width: 200,
                                height: 200,
                                fit: BoxFit
                                    .cover, // Ensure the image fits the box
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '  Daisy',
                                style: TextStyle(
                                  color: Colors.pink[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ImageDetailPageDaisy(images: [
                                        flowerFlower[7].imagePath
                                      ]),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[400],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    'More Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Row for Hydrangea and Coming soon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Hydrangea
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HydrangeaDetailPage()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                flowerFlower[8].imagePath,
                                width: 200,
                                height: 200,
                                fit: BoxFit
                                    .cover, // Ensure the image fits the box
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '  Hydrangea',
                                style: TextStyle(
                                  color: Colors.pink[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ImageDetailPageHDG(
                                          // images: [flowerFlower[1].imagePath]
                                          ),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[400],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    'More Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Coming soon
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 16.0,
                    ),
                    child: Card(
                      color: Colors.pink[100],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'lib/image/ex/last.jpg',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '  Coming soon ',
                              style: TextStyle(
                                color: Colors.pink[700],
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Text(
                          //   ' Description of Lily:' +
                          //       ' They are often associated with purity, renewal, and transience. In Christianity, the Madonna Lily represents the Virgin Mary purity. The lily is the national flower of Italy and is featured on the country emblem. It symbolises unity and peace.',
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     color: const Color.fromARGB(255, 105, 74, 63),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MoreDetailsPage extends StatelessWidget {
  const MoreDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Details'),
      ),
      body: const Center(
        child: Text('More Details Page'),
      ),
    );
  }
}

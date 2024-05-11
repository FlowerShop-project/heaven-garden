import 'package:flowershop/pages/occasion_detail/congratulation_cere.dart';
import 'package:flowershop/pages/occasion_detail/organization.dart';
import 'package:flowershop/pages/occasion_detail/personal_event.dart';
import 'package:flowershop/pages/occasion_detail/visiting_patient.dart';
import 'package:flutter/material.dart';

import 'occasion_detail/funeral.dart'; // Import your funeral.dart file
import 'occasion_detail/wedding.dart'; // Import your wedding.dart file

class Review extends StatelessWidget {
  final List<String> userComments;

  const Review({Key? key, required this.userComments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of maps containing image URL and text for each card
    final List<Map<String, dynamic>> cardData = [
      {
        'image': 'lib/image/occasion/1.png',
      },
      {
        'image': 'lib/image/occasion/2.png',
      },
      {
        'image': 'lib/image/occasion/3.png',
      },
      {
        'image': 'lib/image/occasion/4.png',
      },
      {
        'image': 'lib/image/occasion/5.png',
      },
      {
        'image': 'lib/image/occasion/6.png',
      },
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 245, 238),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 194, 24, 91),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Occasion',
              style: TextStyle(
                color: Color.fromARGB(255, 163, 21, 78),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 248, 245, 238),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 248, 245, 238),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 10.0, // spacing between columns
            mainAxisSpacing: 10.0, // spacing between rows
            childAspectRatio: 1.0, // square aspect ratio
          ),
          itemCount: cardData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Check if the tapped image is the one you want
                if (cardData[index]['image'] == 'lib/image/occasion/1.png') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersonalPage(),
                    ),
                  );
                } else if (cardData[index]['image'] ==
                    'lib/image/occasion/2.png') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WeddingPage(),
                    ),
                  );
                } else if (cardData[index]['image'] ==
                    'lib/image/occasion/3.png') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FuneralPage(),
                    ),
                  );
                } else if (cardData[index]['image'] ==
                    'lib/image/occasion/4.png') {
                  // Navigate to the appropriate page for 'lib/image/occasion/4.png'
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrganizationPage(),
                    ),
                  );
                } else if (cardData[index]['image'] ==
                    'lib/image/occasion/5.png') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VisitingPatientPage(),
                    ),
                  );
                } else if (cardData[index]['image'] ==
                    'lib/image/occasion/6.png') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CeremonyPage(),
                    ),
                  );
                }
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    cardData[index]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

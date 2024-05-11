import 'package:flutter/material.dart';

class ImageDetailPageDahlia extends StatelessWidget {
  const ImageDetailPageDahlia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 245, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 220, 100, 154),
        elevation: 0,
        // Add leading property with IconButton
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 194, 24, 91),
          ),
          onPressed: () {
            Navigator.pop(
              context,
            ); // This will pop the current screen and return to the previous one
          },
        ),
        title: const Text(
          'More Details',
          style: TextStyle(
            color: Color.fromARGB(255, 163, 21, 78),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container for Roses
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 16.0,
                ),
                child: Card(
                  color: Colors.pink[100], // Set background color here
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(
                          8.0,
                        ),
                        child: Image(
                          image: AssetImage('lib/image/dahlia/1.jpg'),
                        ),
                      ),
                      Text(
                        'White Dahlia',
                        style: TextStyle(
                          color: Colors.pink[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Other roses cards go here
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 16.0,
                ),
                child: Card(
                  color: Colors.pink[100], // Set background color here
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(
                          8.0,
                        ),
                        child: Image(
                          image: AssetImage('lib/image/dahlia/2.jpg'),
                        ),
                      ),
                      Text(
                        'Yellow/Orange Dahlia',
                        style: TextStyle(
                          color: Colors.pink[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 16.0,
                ),
                child: Card(
                  color: Colors.pink[100], // Set background color here
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(
                          8.0,
                        ),
                        child: Image(
                          image: AssetImage('lib/image/dahlia/3.jpg'),
                        ),
                      ),
                      Text(
                        'Green Dahlia',
                        style: TextStyle(
                          color: Colors.pink[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 16.0,
                ),
                child: Card(
                  color: Colors.pink[100], // Set background color here
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(
                          8.0,
                        ),
                        child: Image(
                          image: AssetImage('lib/image/dahlia/4.jpg'),
                        ),
                      ),
                      Text(
                        'Red Dahlia',
                        style: TextStyle(
                          color: Colors.pink[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 16.0,
                ),
                child: Card(
                  color: Colors.pink[100], // Set background color here
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(
                          8.0,
                        ),
                        child: Image(
                          image: AssetImage('lib/image/dahlia/5.jpg'),
                        ),
                      ),
                      Text(
                        'Pink Dahlia',
                        style: TextStyle(
                          color: Colors.pink[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 16.0,
                ),
                child: Card(
                  color: Colors.pink[100], // Set background color here
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(
                          8.0,
                        ),
                        child: Image(
                          image: AssetImage('lib/image/dahlia/6.jpg'),
                        ),
                      ),
                      Text(
                        'Black Lily',
                        style: TextStyle(
                          color: Colors.pink[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

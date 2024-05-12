<<<<<<< HEAD
import 'package:flutter/material.dart';

class ImageDetailPageTulip extends StatelessWidget {
  const ImageDetailPageTulip({super.key});

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
                          image: AssetImage('lib/image/tulip/3.jpg'),
                        ),
                      ),
                      Text(
                        'White Tulip',
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
                          image: AssetImage('lib/image/tulip/2.jpg'),
                        ),
                      ),
                      Text(
                        'Yellow Tulip',
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
                          image: AssetImage('lib/image/tulip/1.jpg'),
                        ),
                      ),
                      Text(
                        'Red Tulip',
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
                          image: AssetImage('lib/image/tulip/4.jpg'),
                        ),
                      ),
                      Text(
                        'Pink Tulip',
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
                          image: AssetImage('lib/image/tulip/5.jpg'),
                        ),
                      ),
                      Text(
                        'Purple Tulip',
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
=======
import 'package:flutter/material.dart';

class ImageDetailPageTulip extends StatelessWidget {
  const ImageDetailPageTulip({super.key});

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
                          image: AssetImage('lib/image/tulip/3.jpg'),
                        ),
                      ),
                      Text(
                        'White Tulip',
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
                          image: AssetImage('lib/image/tulip/2.jpg'),
                        ),
                      ),
                      Text(
                        'Yellow Tulip',
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
                          image: AssetImage('lib/image/tulip/1.jpg'),
                        ),
                      ),
                      Text(
                        'Red Tulip',
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
                          image: AssetImage('lib/image/tulip/4.jpg'),
                        ),
                      ),
                      Text(
                        'Pink Tulip',
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
                          image: AssetImage('lib/image/tulip/5.jpg'),
                        ),
                      ),
                      Text(
                        'Purple Tulip',
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
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74

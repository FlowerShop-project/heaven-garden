import 'package:flutter/material.dart';

class ImageDetailPageFMN extends StatelessWidget {
  final List<String> images;

  const ImageDetailPageFMN({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the image
            // Image.asset(
            //   images.isNotEmpty ? images[0] : '', // Check if images list is not empty
            //   width: 200,
            //   height: 200,
            //   fit: BoxFit.cover,
            // ),
            Image.asset(
              'lib/image/3.jpg', // Replace 'assets/my_new_image.jpg' with your image path
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),
            // Display the information text
            Text(
              images.isNotEmpty ? 'No information' : 'Image not available',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

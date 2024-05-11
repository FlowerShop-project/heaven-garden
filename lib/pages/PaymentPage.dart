import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 245, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 220, 100, 154),
        elevation: 0,
        title: const Text(
          'Payment',
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
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 248, 245, 238),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 16.0,
                ),
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Center(
                            child: Text(
                              '- Qr Code -',
                              style: TextStyle(
                                color: Color.fromARGB(255, 163, 21, 78),
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'lib/image/qr.jpg',
                            width: 500,
                            height: 500,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          // Add your gesture detector here
                          onTap: () {
                            // Handle onTap event
                          },
                          child: Container(
                              // Add your container here
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
      ),
    );
  }
}

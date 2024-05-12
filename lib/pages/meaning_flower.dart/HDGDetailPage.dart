<<<<<<< HEAD
import 'package:flutter/material.dart';

class HydrangeaDetailPage extends StatelessWidget {
  const HydrangeaDetailPage({super.key});

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
                    Image.asset(
                      'lib/image/details/HYDRENGEA.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "HYDRENGEA",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          const Icon(Icons.circle, color: Colors.purple, size: 16),
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blue[300], size: 16),
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.pink[200], size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.green, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.white, size: 16),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Hydrangeas carry various meanings, including abundance, gratitude, and apologies in Japanese culture. However, during the Victorian era, they symbolized negative traits like boastfulness and vanity, often given to reject romantic advances.",
                        style: TextStyle(color: Colors.grey, height: 1.4),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Care Tips",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Hydrangeas thrive on water, so ensure the vase is consistently topped up. Trim the stems 2-5 cm with a sharp knife when wilting. Use Chrysal Syringa flower food for longevity. Keep away from draft, heat, and direct sunlight to maintain freshness.",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Price",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "\$20 ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "* To see meaning of other colour you can click more details at flower details page! * ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(height: 120),
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
=======
import 'package:flutter/material.dart';

class HydrangeaDetailPage extends StatelessWidget {
  const HydrangeaDetailPage({super.key});

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
                    Image.asset(
                      'lib/image/details/HYDRENGEA.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "HYDRENGEA",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          const Icon(Icons.circle, color: Colors.purple, size: 16),
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.blue[300], size: 16),
                          const SizedBox(width: 20),
                          Icon(Icons.circle, color: Colors.pink[200], size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.green, size: 16),
                          const SizedBox(width: 20),
                          const Icon(Icons.circle, color: Colors.white, size: 16),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Hydrangeas carry various meanings, including abundance, gratitude, and apologies in Japanese culture. However, during the Victorian era, they symbolized negative traits like boastfulness and vanity, often given to reject romantic advances.",
                        style: TextStyle(color: Colors.grey, height: 1.4),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Care Tips",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Hydrangeas thrive on water, so ensure the vase is consistently topped up. Trim the stems 2-5 cm with a sharp knife when wilting. Use Chrysal Syringa flower food for longevity. Keep away from draft, heat, and direct sunlight to maintain freshness.",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Price",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "\$20 ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "* To see meaning of other colour you can click more details at flower details page! * ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(height: 120),
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
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  // Define _launchMap function outside of the build method
  void _launchMap() async {  
    const url = 'https://maps.app.goo.gl/MF7VmDypjtPR2YKN7';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/image/10.jpg'), // Adjust the path to your image
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ]
                        )
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("HEAVEN GARDEN", style: 
                              TextStyle(color: Color(0xFFF2BED1), fontWeight: FontWeight.bold, fontSize: 35)
                            ,),
                            SizedBox(height: 20,),
                            Row(
                              children: <Widget>[
                                Text("Email: Heaven11@gmail.com", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
                                SizedBox(width: 20,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Exploring the beauty of flowers at Heaven Garden is an enchanting experience that captivates the soul and ignites the senses. As you step into this renowned flower shop, you're greeted by a kaleidoscope of colors and fragrances that dance in the air, creating an atmosphere of pure delight.", 
                        style: TextStyle(color: Colors.grey, height: 1.4),),
                        SizedBox(height: 40,),
                        Text("Address", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("Dreamland Manor, 123 Sukhumvit Road, Bangkok 10110, Thailand.", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),
                        Text("Founded", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("April, 3rd 2025, Thailand", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),
                        SizedBox(height: 120,)
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    _launchMap(); // Call _launchMap() function when tapped
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFF2BED1),
                    ),
                    child: const Center(
                      child: Text(
                        "MAP",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


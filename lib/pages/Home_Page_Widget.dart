import 'package:carousel_slider/carousel_slider.dart';
<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';
import 'About_us.dart';
import 'review.dart';
import 'shophome_page.dart';
import 'flower_details_page.dart';
=======
import 'package:flowershop/pages/flower_details_page.dart';
import 'package:flowershop/pages/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';

import 'About_us.dart';
import 'review.dart';
import 'shophome_page.dart';
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74

Map<DateTime, List<String>> getThaiEventsFor2024() {
  Map<DateTime, List<String>> thaiEvents2024 = {
    DateTime(2024, 1, 1): ['วันขึ้นปีใหม่'],
    DateTime(2024, 1, 2): ['วันเด็กแห่งชาติ'],
    DateTime(2024, 1, 14): ['วันอนุรักษ์ทรัพยากรป่าไม้ของชาติ'],
    DateTime(2024, 1, 16): ['วันครู'],
    DateTime(2024, 1, 17): ['วันพ่อขุนรามคำแหงมหาราช'],
    DateTime(2024, 1, 18): [
      'วันกองทัพไทย',
      'วันยุทธหัตถี',
      'วันสมเด็จพระนเรศวรมหาราช'
    ],
    DateTime(2024, 2, 2): ['วันนักประดิษฐ์', 'วันเกษตรแห่งชาติ'],
    DateTime(2024, 2, 3): ['วันทหารผ่านศึก'],
    DateTime(2024, 2, 14): ['วันวาเลนไทน์'],
    DateTime(2024, 2, 24): ['วันศิลปินแห่งชาติ'],
    DateTime(2024, 2, 26): ['วันสหกรณ์แห่งชาติ'],
    DateTime(2024, 3, 13): ['วันช้างไทย', 'วันไตโลก'],
    DateTime(2024, 3, 21): ['วันกวีนิพนธ์สากล'],
    DateTime(2024, 3, 22): ['วันอนุรักษ์น้ำโลก', 'วันอีสเตอร์'],
    DateTime(2024, 3, 31): ['วันพระบาทสมเด็จพระนั่งเกล้าเจ้าอยู่หัว'],
    DateTime(2024, 4, 1): ['วันเลิกทาส'],
    DateTime(2024, 4, 6): ['วันจักรี'],
    DateTime(2024, 4, 7): ['วันอนามัยโลก'],
    DateTime(2024, 4, 13): ['วันสงกรานต์', 'วันผู้สูงอายุ', 'วันประมงแห่งชาติ'],
    DateTime(2024, 4, 14): ['วันครอบครัว'],
    DateTime(2024, 4, 22): ['วันคุ้มครองโลก'],
    DateTime(2024, 4, 25): ['วันคล้ายวันสวรรคตของสมเด็จพระนเรศวร'],
    DateTime(2024, 5, 1): ['วันแรงงานแห่งชาติ', 'วันกรรมกรสากล'],
    DateTime(2024, 5, 5): ['วันฉัตรมงคล'],
    DateTime(2024, 5, 8): ['วันกาชาดสากล'],
    DateTime(2024, 5, 31): ['วันงดสูบบุหรี่โลก'],
    DateTime(2024, 6, 5): ['วันสิ่งแวดล้อมโลก'],
    DateTime(2024, 6, 8): ['วันมหาสมุทรโลก'],
    DateTime(2024, 6, 9): ['วันอานันทมหิดล'],
    DateTime(2024, 6, 26): ['วันสุนทรภู่', 'วันต่อต้านยาเสพติด'],
    DateTime(2024, 7, 1): [
      'วันสถาปนาลูกเสือแห่งชาติ',
      'วันหยุดภาคครึ่งปี ธนาคาร'
    ],
    DateTime(2024, 7, 11): ['วันประชากรโลก'],
    DateTime(2024, 7, 22): ['วันอาสาฬหบูชา'],
    DateTime(2024, 7, 23): ['วันเข้าพรรษา'],
    DateTime(2024, 7, 29): ['วันภาษาไทยแห่งชาติ'],
    DateTime(2024, 8, 12): [
      'วันแม่แห่งชาติ',
      'วันฉลิมพระชนมพรรษา สมเด็จพระนางเจ้าสิริกิติ์พระบรมราชินีนาถ'
    ],
    DateTime(2024, 8, 16): ['วันสันติภาพไทย'],
    DateTime(2024, 8, 18): ['วันวิทยาศาสตร์แห่งชาติ'],
    DateTime(2024, 9, 1): ['วันสืบ นาคะเสถียร'],
    DateTime(2024, 9, 6): ['วันทรงดนตรี'],
    DateTime(2024, 9, 15): ['วันศิลป์ พีระศรี'],
    DateTime(2024, 9, 16): ['วันโอโซนโลก'],
    DateTime(2024, 9, 20): ['วันเยาวชนแห่งชาติ'],
    DateTime(2024, 9, 24): ['วันมหิดล'],
    DateTime(2024, 10, 16): ['วันอาหารโลก'],
    DateTime(2024, 10, 23): ['วันปิยะมหาราช'],
    DateTime(2024, 10, 31): ['วันฮาโลวีน', 'วันสารทไทย'],
    DateTime(2024, 11, 14): ['วันลอยกระทง', 'วันบิดาแห่งฝนหลวง'],
    DateTime(2024, 12, 1): ['วันต้านเอดส์โลก', 'วันเอดส์โลก'],
    DateTime(2024, 12, 4): ['วันสิ่งแวดล้อมไทย'],
    DateTime(2024, 12, 5): [
      'วันพ่อแห่งชาติ',
      'วันเฉลิมพระชนมพรรษาพระบาทสมเด็จพระเจ้าอยู่หัว'
    ],
    DateTime(2024, 12, 10): ['วันรัฐธรรมนูญ'],
    DateTime(2024, 12, 25): ['วันคริสต์มาส (Merry Christmas)'],
    DateTime(2024, 12, 28): ['วันสมเด็จพระเจ้าตากสินมหาราช'],
    DateTime(2024, 12, 31): ['วันสิ้นปี'],
  };

  return thaiEvents2024;
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    var thaiEvents2024 = getThaiEventsFor2024();

    var calendarBuilders = CalendarBuilders(
      selectedBuilder: (context, date, _) {
        final events = thaiEvents2024[date];
        return Container(
          margin: const EdgeInsets.all(4.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: events != null ? Colors.red : Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            date.day.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
      todayBuilder: (context, date, _) {
        return Container(
          margin: const EdgeInsets.all(4.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 195, 78, 111),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            date.day.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );

    var focusedDay2 = DateTime.now();
    var lastDay2 = DateTime.now().add(const Duration(days: 365));
    var firstDay2 = DateTime.now().subtract(const Duration(days: 365));
    var tableCalendar = TableCalendar(
      calendarFormat: CalendarFormat.month,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
      ),
      calendarBuilders: calendarBuilders,
      focusedDay: focusedDay2,
      lastDay: lastDay2,
      firstDay: firstDay2,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF944E63),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // เปิด Drawer เมื่อกดปุ่ม Menu
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset('lib/image/logo.jpg'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Color.fromARGB(255, 248, 245, 238),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 248, 245, 238),
                    ),
                    title: const Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePageWidget()),
                      );
                    },
                  ),
                ),

                //eco (see flower details) in drawer
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.eco,
                      color: Color.fromARGB(255, 248, 245, 238),
                    ),
                    title: const Text(
                      'Flower detail',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(
<<<<<<< HEAD
                            builder: (context) => FlowerDetailsPage(),
                                ), // Navigate to FlowerDetailsPage
=======
                            builder: (context) =>
                                const FlowerDetailsPage()), // Navigate to FlowerDetailsPage
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.star, // Review icon
                      color: Color.fromARGB(255, 248, 245, 238),
                    ),
                    title: const Text(
<<<<<<< HEAD
                      'Let Guess!',
=======
                      'Occasion',
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Review(
                                  userComments: [],
                                )),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.info,
                      color: Color.fromARGB(255, 248, 245, 238),
                    ),
                    title: const Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUsPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
<<<<<<< HEAD
=======
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Color.fromARGB(255, 248, 245, 238),
                ),
                title: const Text(
                  'Log out',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
              ),
            ),
>>>>>>> 5b0521ddeb5618326b7a10e8ee4bcca483de5f74
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () {
          final unfocusNode = FocusScope.of(context);
          unfocusNode.hasFocus ? unfocusNode.unfocus() : null;
        },
        child: SafeArea(
          top: true,
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 17),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'lib/image/Home/4.png',
                      width: 450,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[300],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: tableCalendar,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[300],
              ),
              SizedBox(
                width: double.infinity,
                height: 180,
                child: CarouselSlider(
                  items: [
                    Image.asset(
                      'lib/image/Home/2.png',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'lib/image/Home/1.png',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'lib/image/Home/3.png',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'lib/image/Home/5.png',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                  options: CarouselOptions(
                    initialPage: 1,
                    viewportFraction: 0.5,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.25,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: false,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homepage(),
                        fullscreenDialog: false,
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(
                        255, 158, 58, 91), // กำหนดสีของตัวอักษรเป็นสีขาว
                  ),
                  child: const Text('Shop Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

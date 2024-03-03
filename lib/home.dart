import 'package:exam/emoj_itm.dart';
import 'package:exam/exercise.dart';
import 'package:exam/workout.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imgPath = [
    'assets/images/ex1.png'
        'assets/images/ex2.png'
        'assets/images/ex3.png'
        'assets/images/ex4.png'
  ];

  List<String> txt = ['Relaxation', 'Meditation', 'Beathing', 'Yoga'];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Moody',
          style: TextStyle(color: Colors.black),
        ),
        // backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: const Image(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: badges.Badge(
              badgeContent: Text(' '),
              child: Icon(Icons.notifications),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 326,
                    height: 30,
                    child: const Text(
                      'Hello, Sara Rose',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xff371B34)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 210,
                    height: 24,
                    child: const Text(
                      'How are you feeling today ?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xff371B34)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Emoj(
                    image: 'assets/images/1.png',
                    txt: 'Love',
                  ),
                  Emoj(
                    image: 'assets/images/2.png',
                    txt: 'Cool',
                  ),
                  Emoj(
                    image: 'assets/images/3.png',
                    txt: 'Happy',
                  ),
                  Emoj(
                    image: 'assets/images/4.png',
                    txt: 'Sad',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 326,
                height: 230,
                child: CarouselSlider(
                  items: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Feature',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Text(
                                'See more',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff027A48),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff027A48),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Image(
                          image: AssetImage('assets/images/feature.png'),
                        ),
                        const SizedBox(height: 10),
                        AnimatedSmoothIndicator(
                          activeIndex: 1,
                          count: 3,
                          effect: WormEffect(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Feature',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Text(
                                'See more',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff027A48),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff027A48),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Image(
                          image: AssetImage('assets/images/feature.png'),
                        ),
                        const SizedBox(height: 10),
                        AnimatedSmoothIndicator(
                          activeIndex: 2,
                          count: 3,
                          effect: WormEffect(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Feature',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Text(
                                'See more',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff027A48),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff027A48),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Image(
                          image: AssetImage('assets/images/feature.png'),
                        ),
                        const SizedBox(height: 10),
                        AnimatedSmoothIndicator(
                          activeIndex: 3,
                          count: 3,
                          effect: WormEffect(),
                        )
                      ],
                    ),
                  ],
                  options: CarouselOptions(),
                ),
              ),
              const SizedBox(height: 20),
            Container(
              width: 250,
              height: 200,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Exercise',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        'See more',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff027A48),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff027A48),
                      ),
                    ],
                  ),
                  Exercise(),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, WorkOut.routeName);
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
           index=value;
           setState(() {});
        },
        iconSize: 30,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Icon.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Icon1.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Icon2.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/Icon3.png'),
              ),
              label: ''),
        ],
      ),
    );
  }
}

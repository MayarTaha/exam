import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  static const String routeName = 'news';

  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/flower.png'),
              ),
              Text(
                'AliceCare',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          ),
          //centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff667085),
                        ),
                        hintText: 'Articles, Video, Audio and More,...',
                        hintStyle:
                            TextStyle(color: Color(0xff667085), fontSize: 24),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 70,
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tabs: const [
                      Tab(
                        child: Text('Discover',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6941C6))),
                      ),
                      Tab(
                        child: Text('News',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6941C6))),
                      ),
                      Tab(
                        child: Text('Most Viewed',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6941C6))),
                      ),
                      Tab(
                        child: Text('Saved',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6941C6))),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Hot topics',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        'See more',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff5925DC),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff5925DC),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 230,
                  child: CarouselSlider(
                    items: const [
                      Image(
                        image: AssetImage('assets/images/selfCare.png'),
                      ),
                      Image(
                        image: AssetImage('assets/images/cycle.png'),
                      ),
                    ],
                    options: CarouselOptions(),
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      'Get Tips',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: 326,
                  height: 196,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE4E7EC)),
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffE4E7EC),
                  ),
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/doctor.png'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Connect with doctors &\n get suggestions',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            'Connect now and\n get expert insights ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'View detail',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff7F56D9),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      'Cycle Phases and Period',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5925DC),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff5925DC),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff6941C6),
          unselectedItemColor: Colors.grey[600],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          iconSize: 30,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/ic_Insights.png'),
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: ''),
          ],
        ),
      ),
    );
  }
}

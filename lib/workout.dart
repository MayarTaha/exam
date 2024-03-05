import 'package:exam/news.dart';
import 'package:exam/workout_card.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class WorkOut extends StatefulWidget {
  const WorkOut({Key? key}) : super(key: key);
  static const String routeName = 'WorkOut';

  @override
  State<WorkOut> createState() => _WorkOutState();
}

class _WorkOutState extends State<WorkOut> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          // leadingWidth: 15,
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          titleSpacing: 30,
          title: Column(
            children: const <Widget>[
              Text('Hello, Jade',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
              SizedBox(width: 20),
              Text('Ready to workout?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
            ],
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
                Container(
                  color: Color(0xffF8F9FC),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.favorite_border,
                                        color: Color(0xff717BBC)),
                                    Text(
                                      ' Heart Rate ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  '81 BPM',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.list_outlined,
                                        color: Color(0xff717BBC)),
                                    Text(
                                      ' To-do ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  '32,5 %',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ImageIcon(
                                      AssetImage('assets/images/ic_fire.png'),
                                      color: Color(0xff717BBC),
                                    ),
                                    Text(
                                      ' Calo ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  ' 1000 Cal',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: const [
                    Text('Workout Programs',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
                SizedBox(height: 20),
                TabBar(
                  indicator: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tabs: const [
                    Tab(
                      child: Text('All Type',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff363F72))),
                    ),
                    Tab(
                      child: Text('Full Body',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff363F72))),
                    ),
                    Tab(
                      child: Text('Upper',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff363F72))),
                    ),
                    Tab(
                      child: Text('Lower',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff363F72))),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                WorkOutCard(
                    date: '7 days',
                    txt: 'Morning Yoga\nImprove mental focus.',
                    time: '30 mins',
                  imagepath: 'assets/images/yoga.png',
                ),
                SizedBox(height: 20),
                WorkOutCard(
                    date: '3 days',
                    txt: 'Plank Exercise\nImprove posture and stability.',
                    time: '30 mins',
                  imagepath: 'assets/images/plank.png',
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, News.routeName);
          },
          child: Icon(Icons.arrow_forward_ios),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff363F72),
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
                  AssetImage('assets/images/Icon4.png'),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/Icon5.png'),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/Icon3.png'),
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}

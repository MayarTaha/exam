import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class WorkOut extends StatelessWidget {
  const WorkOut({Key? key}) : super(key: key);
  static const String routeName = 'WorkOut';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
         // leadingWidth: 15,
          leading:
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          titleSpacing: 30,
          title: Column(
            children: <Widget>[
             Text('Hello, Jade' ,style: TextStyle(
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
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: badges.Badge(
                badgeContent: Text(' '),
                child: Icon(Icons.notifications),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       child: TabBar(
                         indicator: BoxDecoration(
                           color: Colors.grey[600],
                           borderRadius: BorderRadius.circular(20),
                         ),
                         tabs: [
                         Tab(
                           child: Image(
                             image: AssetImage('assets/images/work1.png'),
                           ),
                         ),
                         Tab(
                           child: Image(
                             image: AssetImage('assets/images/work2.png'),
                           ),
                         ),
                         Tab(
                           child: Image(
                             image: AssetImage('assets/images/work3.png'),
                           ),
                         ),
                       ],),
                     ),
                   ),
                   SizedBox(height: 20),
                   Row(
                     children: [
                       Text('Workout Programs',style: TextStyle(
                   color: Colors.black,
                     fontSize: 20,
                   )),
                     ],
                   ),
                 ],
          ),
        ),
      ),
    );
  }
}

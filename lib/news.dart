import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);
  static const String routeName = 'news';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(

          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/flower.png'),
              ),
              const Text(
                'AliceCare',
                style: TextStyle(color: Colors.black,fontSize: 24 ),
              ),
            ],
          ),
          //centerTitle: true,
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color:Colors.grey,)
          ),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search,color:  Color(0xff667085),),
                hintText: 'Articles, Video, Audio and More,...',
                hintStyle: TextStyle(color: Color(0xff667085),fontSize: 24),
                border: InputBorder.none),
          ),
        ),
        SizedBox(height: 20),
        // Container(
        //   width: double.infinity,
        //   child: TabBar(
        //     indicator: BoxDecoration(
        //       color: Colors.grey[600],
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     tabs: const [
        //       Tab(
        //         child: Text('Discover',
        //             style: TextStyle(
        //                 fontWeight: FontWeight.w500,
        //                 color: Color(0xff6941C6))),
        //       ),
        //       Tab(
        //         child: Text('News',
        //             style: TextStyle(
        //                 fontWeight: FontWeight.w500,
        //                 color: Color(0xff6941C6))),
        //       ),
        //       Tab(
        //         child: Text('Most Viewed',
        //             style: TextStyle(
        //                 fontWeight: FontWeight.w500,
        //                 color: Color(0xff6941C6))),
        //       ),
        //       Tab(
        //         child: Text('Saved',
        //             style: TextStyle(
        //                 fontWeight: FontWeight.w500,
        //                 color: Color(0xff6941C6))),
        //       ),
        //     ],
        //   ),
        // ),
      ],
        ),
      ),
      ),
    );
  }
}

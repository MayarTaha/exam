import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  static const String routeName = 'Exercise';

  List<String> imagePath = [
    "assets/images/ex1.png",
    "assets/images/ex2.png",
    "assets/images/ex3.png",
    "assets/images/ex4.png",
  ];
  List<String> text = [
    "relaxiation",
    "meditation",
    "breathing",
    "youga",
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2 / 1,
            ),
            itemCount: 4,
            padding: EdgeInsets.all(8),
         //   scrollDirection: Axis.vertical,
            itemBuilder: (context, int index) {
              return Row(
                children: [
                  Image(image: AssetImage(imagePath[index])),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    text[index],
                  ),
                ],
              );
            }
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Emoj extends StatelessWidget {
   Emoj({super.key,this.image,this.txt});
final String? image;
final String? txt;
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Column(
        children: [
          CircleAvatar(
            // radius: 40,
            child: Image(image: AssetImage('$image'),fit: BoxFit.cover,width: 40,height: 40,),
          ),
          Text('$txt')
        ],
      ),
    );
  }
}

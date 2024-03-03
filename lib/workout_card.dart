import 'package:flutter/material.dart';

class WorkOutCard extends StatelessWidget {
  const WorkOutCard({super.key,this.date,this.time,this.txt,this.imagepath});
final String? date;
final String? txt;
final String? time;
final String? imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEAECF5),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffFCFCFD),
                  ),
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '$date',style: TextStyle(fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '$txt',style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.access_time_rounded,color: Color(0xff717BBC)),
                    Text(' $time',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],

            ),
            Spacer(),
           Expanded(child: Image( image:AssetImage('$imagepath'),))
          ],
        ),
      ),
    );
  }
}

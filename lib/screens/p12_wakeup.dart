import 'package:flutter/material.dart';

import 'hours.dart';
import 'minutes.dart';

class time extends StatelessWidget {
  const time({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.3),
            Container(
              child: Image.asset("assets/images/clock.png"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text("What is Wake-up time?", style: TextStyle(fontSize: 25)),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/pointer.png"),
            Container(
               padding:const EdgeInsets.fromLTRB(0,10,0,0),
              height: 150,
              width: 70,
              child: ListWheelScrollView.useDelegate(
                  overAndUnderCenterOpacity: .5,
                  itemExtent: 50,
                  perspective: 0.01,
                  diameterRatio: 1.5,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 12,
                      builder: (context, index) {
                        return hours(hour: index+1);
                      })),
            ),
            Container(
               padding:const EdgeInsets.fromLTRB(0,10,0,0),
              height: 150,
              width: 70,
              child: ListWheelScrollView.useDelegate(
                  overAndUnderCenterOpacity: .5,
                  itemExtent: 50,
                  perspective: 0.01,
                  diameterRatio: 1.5,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 60,
                      builder: (context, index) {
                        return minutes(min: index);
                      })),
            ),
            Container(
               padding:const EdgeInsets.fromLTRB(0,10,0,0),
              height: 150,
              width: 70,
              child: ListWheelScrollView(
                overAndUnderCenterOpacity: .5,
                itemExtent: 50,
                perspective: 0.01,
                diameterRatio: 1.5,
                physics: const FixedExtentScrollPhysics(),
                children: [
                  Container(
                      // decoration: const BoxDecoration(

                      //     border: Border(
                      //         top: BorderSide(width: 2,color:Colors.grey),
                      //         bottom: BorderSide(width: 2))
                      //         ),
                      child: const Text("am",
                          style: TextStyle(color: Colors.blue, fontSize: 30))),
                  Container(
                      // decoration: const BoxDecoration(
                      //     border: Border(
                      //         top: BorderSide(width: 2,color:Colors.grey),
                      //         bottom: BorderSide(width: 2))),
                      child:const Text("pm",
                          style: TextStyle(color: Colors.blue, fontSize: 30))),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

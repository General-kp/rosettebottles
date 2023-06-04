import 'package:flutter/material.dart';

import '../widgets/function.dart';
import 'hours.dart';

class weight extends StatefulWidget {
  const weight({super.key});

  @override
  State<weight> createState() => _weightState();
}

class _weightState extends State<weight> {
  int extent = 0, unit = 0;
  @override
  void initState() {
    extent = 200;
    super.initState();
  }

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
              child: Image.asset("assets/images/weight 1.png"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text("What is your Current weight?",
            style: TextStyle(fontSize: 25)),
        const SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/pointer.png"),
          Container(
            padding:const EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 150,
            width: 70,
            child: ListWheelScrollView.useDelegate(
                overAndUnderCenterOpacity: .5,
                itemExtent: 50,
                perspective: 0.01,
                diameterRatio: 1.5,
                physics: const FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                    childCount: extent,
                    builder: (context, index) {
                      if (extent == 95) {
                        return hours(hour: index + 41);
                      } else {
                        return hours(hour: index + 81);
                      }
                    })),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 150,
            width: 70,
            child: ListWheelScrollView(
              overAndUnderCenterOpacity: .5,
              onSelectedItemChanged: (value) {
                setState(() {
                  unit = value;
                  extent = weight1(unit);
                });
              },
              itemExtent: 50,
              perspective: 0.01,
              diameterRatio: 1.5,
              physics: const FixedExtentScrollPhysics(),
              children: [
                Container(
                    child: const Text("lbs",
                        style: TextStyle(color: Colors.blue, fontSize: 30))),
                Container(
                    child: const Text("kg",
                        style: TextStyle(color: Colors.blue, fontSize: 30))),
              ],
            ),
          ),
        ]),
      ],
    ));
  }
}

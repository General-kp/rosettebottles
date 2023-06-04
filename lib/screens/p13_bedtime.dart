import 'package:flutter/material.dart';
import 'package:rb/screens/minutes.dart';

import 'hours.dart';

class bedtime extends StatelessWidget {
  const bedtime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[
          SizedBox(height:MediaQuery.of(context).size.height*0.1),
          Row(
            children: [
              SizedBox(width:MediaQuery.of(context).size.width*0.3),
              Container(
                child:Image.asset("assets/images/bedtime.png"),
              ),
            ],
          ),
          const SizedBox(height:10),
          const Text("What is your Bed time?",style:TextStyle(fontSize: 25)),
          const SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/pointer.png"),
              Container(
                 padding:const EdgeInsets.fromLTRB(0,10,0,0),
                  height:150,
                  width:70,
                  child: ListWheelScrollView.useDelegate(
                    overAndUnderCenterOpacity: .5,
                  itemExtent: 50,
                  perspective: 0.01,
                  diameterRatio: 1.5,
                  physics: const FixedExtentScrollPhysics(),
                   childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 12,
                    builder: (context,index){
                      return hours(hour:index+1);
                    }
                   )
                   ),
                ),

                Container(
                   padding:const EdgeInsets.fromLTRB(0,10,0,0),
                  height:150,
                  width:70,
                  child: ListWheelScrollView.useDelegate(
                    overAndUnderCenterOpacity: .5,
                  itemExtent: 50,
                  perspective: 0.01,
                  diameterRatio: 1.5,
                  physics: const FixedExtentScrollPhysics(),
                   childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 60,
                    builder: (context,index){
                      return minutes(min:index);
                    }
                   )
                   ),
                ),
                Container(
                   padding:const EdgeInsets.fromLTRB(0,10,0,0),
                  height:150,
                  width:70,
                  child: ListWheelScrollView(
                    overAndUnderCenterOpacity: .5,
                  itemExtent: 50,
                  perspective: 0.01,
                  diameterRatio: 1.5,
                  physics: const FixedExtentScrollPhysics(),
                   children: [
                    Container(
                    child:const Text("am",style:TextStyle(color:Colors.blue,fontSize: 30))
                      ),
                      Container(
                    child:const Text("pm",style:TextStyle(color:Colors.blue,fontSize: 30))
                      ),
                   ],
                   ),
                ),
            ],
          ),

        ],
      )
    );
  }
}
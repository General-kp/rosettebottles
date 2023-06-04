import 'package:flutter/material.dart';
import 'package:rb/widgets/function.dart';
import 'hours.dart';
import 'minutes.dart';

class dob extends StatefulWidget {

  const dob({super.key});

  @override
  State<dob> createState() => _dobState();
}

class _dobState extends State<dob> {
  int extent=0,unit=0,unit1=0;

  @override
  void initState() {
      extent=31;
      super.initState();
  }
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
                child:Image.asset("assets/images/date 1.png"),
              ),
            ],
          ),
          const SizedBox(height:10),
          Row(children: [
            const SizedBox(width:20),
            Container(
              width:MediaQuery.of(context).size.width*.90,
              alignment: Alignment.center,
              child: const Text("When we can celebrate your",style:TextStyle(fontSize: 25))),
            ]),
           Container(
              width:MediaQuery.of(context).size.width*.90,
              alignment: Alignment.center,
              child: const Text("celebrate?",style:TextStyle(fontSize: 25))),
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
                    childCount: extent,
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
                    onSelectedItemChanged: (value){
                      setState(() {
                        unit=value;
                        extent=month(unit+1,unit1);
                      });
                    },
                    overAndUnderCenterOpacity: .5,
                  itemExtent: 50,
                  perspective: 0.01,
                  diameterRatio: 1.5,
                  physics: const FixedExtentScrollPhysics(),
                   childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 12,
                    builder: (context,index){
                      return minutes(min:index+1);
                    }
                   )
                   ),
                ),
                Container(
                   padding:const EdgeInsets.fromLTRB(0,10,0,0),
                  height:150,
                  width:70,
                  child: ListWheelScrollView.useDelegate(
                    onSelectedItemChanged: (value){
                      setState(() {
                        unit1=value;
                        extent=month(unit+1,unit1);
                      });
                    },
                    overAndUnderCenterOpacity: .5,
                  itemExtent: 50,
                  perspective: 0.01,
                  diameterRatio: 1.5,
                  physics: const FixedExtentScrollPhysics(),
                   childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 60,
                    builder: (context,index){
                      return minutes(min:index+1988);
                    }
                   )
                   ),
                ),
            ],
          ),
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import '../widgets/function.dart';
import 'hours.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  int extent=0,unit=0;
  @override
  void initState() {
      extent=200;
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
                child:Image.asset("assets/images/height.png"),
              ),
            ],
          ),
          const SizedBox(height:10),
          const Text("What is your Current height",style:TextStyle(fontSize: 25)),
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
                  overAndUnderCenterOpacity: 0.5,
                  itemExtent:50,
                  perspective: 0.01,
                  diameterRatio: 1.5,
                  physics:const FixedExtentScrollPhysics(),
                   childDelegate: ListWheelChildBuilderDelegate(
                  childCount:extent,
                    builder: (context,index){
                      if (extent==8){
                      return hours(hour:index+1);}
                      else{
                       return hours(hour:index+100);}
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
                    onSelectedItemChanged: (value){
                          setState(() {
                            unit=value;
                            extent=height(unit);
                          });
                    },
                  itemExtent: 50,
                  perspective: 0.01,
                  diameterRatio: 1.5,
                  physics: const FixedExtentScrollPhysics(),
                   children: [
                    Container(
                    child:const Text("cm",style:TextStyle(color:Colors.blue,fontSize: 30))
                      ),
                      Container(
                    child:const Text("ft",style:TextStyle(color:Colors.blue,fontSize: 30))
                      ),
                   ],
                   ),
                ),
            ]
          ),
        ],
      )
    );
  }
}
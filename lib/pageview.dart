import 'package:flutter/material.dart';
import 'package:rb/screens/p13a_started.dart';
import 'package:rb/screens/p7_names.dart';
import 'package:rb/screens/p9_dob.dart';
import 'package:rb/screens/p8_gender.dart';
import 'package:rb/screens/p11_height.dart';
import 'package:rb/screens/p10_weight.dart';
import 'package:rb/screens/p12_wakeup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'screens/p13_bedtime.dart';
class settime extends StatelessWidget {
  const settime({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:timer(),
    );
  }
}
class timer extends StatefulWidget {
  const timer({super.key});

  @override
  State<timer> createState() => _timerState();
}

class _timerState extends State<timer> {
  final PageController _pagecontroller=PageController(
    initialPage: 0,
    keepPage: true,
  );

  int pageindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height:MediaQuery.of(context).size.height*.13),
          Row(
            children: [
              SizedBox(width:MediaQuery.of(context).size.width*.30),
              SmoothPageIndicator(
                controller:_pagecontroller,
                count:7,
                effect: SlideEffect(
                  activeDotColor:Colors.blue,
                  dotColor: Colors.black.withOpacity(0.5)
                  )
              )
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.03,),
          SizedBox(
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height*.70,
            child: PageView(
              onPageChanged: (index) => pageindex=index,
              controller:_pagecontroller,
              children: const [
                  Timer1(),
                  Timer(),
                  dob(),
                  weight(),
                  Height(),
                  time(),
                  bedtime(),
              ],
            ),
          ),
          Row(
            children:[
              SizedBox(width:MediaQuery.of(context).size.width*.06,),
              Container(
                width:50,
                decoration:BoxDecoration(
                color:Colors.blue.withOpacity(0.3),
                borderRadius: const BorderRadius.all(Radius.circular(40))
                ),
                child: TextButton(onPressed: (){
                  print(pageindex);
                    _pagecontroller.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.linear);
                },
                child:const Icon(Icons.arrow_back_ios_new_outlined,color:Colors.blue))
                ),
              SizedBox(width:MediaQuery.of(context).size.width*.27 ,),
              const Text("skip",style:TextStyle(color:Colors.blue,fontSize: 20)),
              SizedBox(width:MediaQuery.of(context).size.width*.27 ,),
              Container(
                width:50,
                decoration:const BoxDecoration(
                color:Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: TextButton(onPressed: (){
                  setState(() {
                    if(pageindex!=6) {
                      _pagecontroller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.linear);
                    } else if(pageindex==6){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>MyApp12()),
                    );
                    }
                    print(pageindex);
                    // if(_pagecontroller.)
                  });
                },
                child:const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,))
                ),
            ],
          )
        ],
      ),
    );
  }
}

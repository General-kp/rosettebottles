

import 'dart:async';

import 'package:flutter/material.dart';

import 'p2_welcomescreen.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  double value = 0.4;
  int i = 1;
  @override
  void initState() {
    super.initState();
    // while(value!=.9){
    //   setState(() {value = value + .1;});
    //   delay(0, 500);
    // }
    Timer(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Welcomescreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            //#B2FEFA #0ED2F7
            gradient:LinearGradient(
              colors:[Color(0xffB2FEFA),Color(0xea0ED2F7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              ),
            //     gradient: RadialGradient(
            //   colors: const [
            //     Color.fromRGBO(95, 1, 246, .5),
            //     Color.fromRGBO(173, 216, 230, 1),
            //     Color.fromRGBO(95, 1, 246, .5)
            //   ],
            //   center: const Alignment(0, -.15),
            //   stops: [value, .1, 1],
            // )
          ),
          child:
              Stack(
                children: [
                  Positioned(
                    top:210,
                    left:107,
                    child: Image.asset("assets/images/finallogo.png",height: 140, width: 200),
                  ),
                  Positioned(
                    top:290,
                    left:110,
                    child: Image.asset("assets/images/finalname.png",height: 150, width: 200),)
                ],
              ),
          // child:
          //     SizedBox(height: MediaQuery.of(context).size.height * .23),
          //     Image.asset("assets/images/finallogo.png",
          //         height: 140, width: 200),
          //     Image.asset("assets/images/finalname.png",
          //         height: 150, width: 200)

          ),
    ));
  }
}

import 'package:flutter/material.dart';



class MyApp12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Bed(),
    );
  }
}

class Bed extends StatefulWidget {
  const Bed({super.key});

  @override
  State<Bed> createState() => _BedState();
}

class _BedState extends State<Bed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 21),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "We Are Ready With You,To",
                  style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .001),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Manage Your Health",
                  style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .71,
              decoration: BoxDecoration(
                border: Border.all(width: 0.1, color: Colors.black),
                // shape: BoxShape.rectangle,
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/image 3.png',
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Container(
              width: 310,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    backgroundColor: const Color(0xff2B7DE8),
                  ),
                  child: const Text(
                    "Finish and Get Started",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
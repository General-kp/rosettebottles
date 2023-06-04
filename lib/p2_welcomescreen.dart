import 'package:flutter/material.dart';
import 'package:rb/screens/p3_loginscreen.dart';

// void main() {
//   runApp(const MaterialApp(
//       debugShowCheckedModeBanner: false, home: Welcomescreen()));
// }

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .10,
          ),
          RichText(
              text: const TextSpan(
                  text: "Welcome to",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                  children: [
                TextSpan(
                  text: " Rossette",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 25),
                )
              ])),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Image.asset("assets/images/Images.png"),
          SizedBox(
            height: MediaQuery.of(context).size.height * .07,
          ),
          const Text(
            "The Smart Way To,Stay Hydrated.",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 23),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Container(
              height: 40,
              width: MediaQuery.of(context).size.width * .70,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 19, 104, 252),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )))
        ]),
      ),
    ));
  }
}

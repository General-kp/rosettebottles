import 'package:flutter/material.dart';
import 'package:rb/p5_emailauthotp.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: const Text(
                "Enter Your E-mail Address",
                style: TextStyle(
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 23),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: const Text(
                "We will send an OTP verifcation to you",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                height: 45,
                width: MediaQuery.of(context).size.width * .90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    )),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                      hintText: "Your Email ID",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * .20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * .63,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Otp()),
                          );
                        },
                        child: const Text(
                          "Send me the code",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ))),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rb/screens/p6_alertmessage.dart';
import 'package:rb/widgets/delay.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final String _message="Login Sucessful";
  final String _title="Complete your user profile";
  opendialog()=>showDialog(context: context,
    builder: (context)=>AlertDialog(
      contentPadding: EdgeInsets.zero,
      content:Notice(str12:_message,str22:_title),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      // Title(color: Colors.red, child: Text(_message))
    ),
    );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const Text(
            'Confirm Your Code',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter the code sent to you gmail',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 44,
                width: 67,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border:Border.all(color:Colors.blue),
                  borderRadius: const BorderRadius.all(Radius.circular(22)),
                ),
                child: TextFormField(
                  onChanged: ((value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      }),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                  cursorColor: Colors.blue,
                  decoration: const InputDecoration(border: InputBorder.none),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              Container(
                height: 44,
                width: 67,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border:Border.all(color:Colors.blue),
                  borderRadius: const BorderRadius.all(Radius.circular(22)),
                ),
                child: TextFormField(
                  onChanged: ((value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      }),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                  cursorColor: Colors.blue,
                  decoration: const InputDecoration(border: InputBorder.none),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              Container(
                height: 44,
                width: 67,
                decoration: BoxDecoration(
                  border:Border.all(color:Colors.blue),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(22)),

                ),
                child: TextFormField(
                  onChanged: ((value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      }),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                  cursorColor: Colors.blue,
                  decoration: const InputDecoration(border: InputBorder.none),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              Container(
                height: 44,
                width: 67,
                decoration:BoxDecoration(
                  border:Border.all(color:Colors.blue),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(22)),
                ),
                child: TextFormField(
                  onChanged: ((value) => {
                        if (value.length == 1)
                          {FocusScope.of(context).nextFocus()}
                      }),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                  cursorColor: Colors.blue,
                  decoration: const InputDecoration(border: InputBorder.none),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 50),
          Center(
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Resend the code',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )),
          ),
          const SizedBox(height: 50),
          Center(
            child: SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.9,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color.fromARGB(255, 43, 156, 249)),
                onPressed: ()async{
                  FocusScope.of(context).unfocus();
                  await delay(0,200);
                  opendialog();
                  await delay(0,1000);
                },
                child: const Text(
                  "Confirm",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:rb/screens/p6_alertmessage.dart';
import 'package:rb/widgets/delay.dart';

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
String user="",pass="",_message="",_title="";
  final TextEditingController _iamcontroller=TextEditingController();

  final TextEditingController _iamcontroller1=TextEditingController();
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
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _iamcontroller.dispose();
    super.dispose();
  }
  void dispose1() {
    // Clean up the controller when the widget is disposed.
    _iamcontroller1.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // mobject=MediaQuery.of(context).size;
    return
    Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:AppBar(title:const Text("Long time no see",style: TextStyle(color:Colors.amber),) ) ,
      body:SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
             const Align(
              alignment:Alignment.centerLeft,
              child: Text("EMAIL",style:TextStyle(color:Colors.red))),
            Row(
                children: [
                  // SizedBox(width:MediaQuery.of(context).size.width*.3,height:100),
                  SizedBox(
                    width:MediaQuery.of(context).size.width*.90,
                    height:100,
                    child: TextField(
                      controller:_iamcontroller,
                      autocorrect: true,
                      decoration:const InputDecoration(
                        hintText:"Enter your email",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.purple,width:2)
                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.purple,width:2)
                        ),
                      ) ,
                      ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("PASSWORD",style:TextStyle(color:Colors.red))),
              Row(children: [
                // SizedBox(width:MediaQuery.of(context).size.width*.3,height:100),
                  SizedBox(
                    width:MediaQuery.of(context).size.width*.90,
                    height:100,
                    child: TextField(
                      controller:_iamcontroller1,
                      autocorrect: true,
                      decoration:const InputDecoration(
                        hintText:"Enter your password",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.purple,width:2)
                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.purple,width:2)
                        ),
                      ) ,
                      ),
                  ),
              ],),
              TextButton(onPressed:(){
                setState(() async{
                  FocusScope.of(context).unfocus();
                  user=_iamcontroller.text;
                  pass=_iamcontroller1.text;
                  if(_iamcontroller.text=="venky" && _iamcontroller1.text=="1234")
                  {
                    _message="Login Sucessful";
                    _title="Complete your user profile";
                  }
                  else{
                    _message="Failed to login";
                    _title="Try again after some time";
                  }
                  await delay(0,200);
                  opendialog();
                });
              },
              child:Align(
                alignment:Alignment.bottomLeft,
                child: Container(
                  width:500,
                  decoration:const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color:Colors.amber,
                  ),
                  child:const Row(children: [
                    Icon(Icons.payments_sharp),
                    SizedBox(width:20),
                    Text("SUBMIT",style:TextStyle(color:Colors.black))
                  ],)
                ),
              )
              ),
          ],
        ),
      ),
    );
  }
}
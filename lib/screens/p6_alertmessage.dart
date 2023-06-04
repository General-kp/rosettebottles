import 'package:flutter/material.dart';

import '../pageview.dart';


// ignore: must_be_immutable
class Notice extends StatelessWidget {
  String str12="",str22="";
  Notice({super.key, required this.str12,required this.str22});

  @override
  Widget build(BuildContext context) {
    return Container(
          width:MediaQuery.of(context).size.width*.80,
          height:MediaQuery.of(context).size.height*.70,
          decoration:const BoxDecoration(
              color:Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child:Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height*.20,),
              Image.asset("assets/images/tick.png"),
              Text(str12,style:const TextStyle(fontSize: 40,color:Colors.white)),
              SizedBox(height:MediaQuery.of(context).size.height*.02),
              Text(str22,style: const TextStyle(fontSize: 20,color:Colors.white)),
              SizedBox(height:MediaQuery.of(context).size.height*.05),
              Container(
                width:MediaQuery.of(context).size.width*.70,
                decoration:const BoxDecoration(
                  color:Color.fromRGBO(0, 0, 139,1),
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: TextButton(onPressed: (){
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const settime()),
                          );
                },
                child:const Text("NEXT",style:TextStyle(fontSize: 20,color:Colors.white))
                ),
              ),
            ],
          )
        );
  }
}
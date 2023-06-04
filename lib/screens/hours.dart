import 'package:flutter/material.dart';

class hours extends StatelessWidget {
  final int hour;
  const hours({super.key, required this.hour});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      ),
      child:Text(check(hour),style:const TextStyle(color:Colors.blue,fontSize: 30))
    );
  }
}
String check(int hour){
  if (hour>=10) {
    return hour.toString() ;
  } else {
    return "0$hour";
  }
}
import 'package:flutter/material.dart';

class minutes extends StatelessWidget {
  final int min;
  const minutes({super.key, required this.min});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:Text(check(min),style:const TextStyle(color:Colors.blue,fontSize: 30))
    );
  }
}
String check(int min){
  if (min>=10) {
    return min.toString() ;
  } else {
    return "0$min";
  }
}
import 'package:flutter/material.dart';

import '../varriable/varriable.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key,required this.width,required this.hight,required this.fontSize,required this.borderRadis,
  required this.text});
 final double hight,width,fontSize,borderRadis;
 final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff86B560),
            Color(0xff336F4A)
          ], // Specify your gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(borderRadis),
      ),
      child: Center(
          child: Text(
           text,
            style: Variables.style(
                context, fontSize, FontWeight.w700, Color(0xffFDFDFD)),
          )),
    );
  }
}

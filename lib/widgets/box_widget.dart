import 'package:flutter/material.dart';

import '../varriable/varriable.dart';

class BoxWidget extends StatelessWidget {
   BoxWidget({super.key,required this.oneNum,required this.twoNum,required this.yearName});
  String yearName,oneNum,twoNum;

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 52,
      height: 46,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFF737A)),
                    borderRadius: BorderRadius.circular(4)
                ),
                child: Center(child: Text(oneNum,style: Variables.style(context, 12, FontWeight.w500, Color(0xff202020)),)),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFF737A)),
                    borderRadius: BorderRadius.circular(4)
                ),
                child: Center(child: Text(twoNum,style: Variables.style(context, 12, FontWeight.w500, Color(0xff202020)),)),
              ),
            ],
          ),
          Text(yearName,style: Variables.style(context, 12, FontWeight.w500, Color(0xff202020)),)
        ],
      ),
    );
  }
}

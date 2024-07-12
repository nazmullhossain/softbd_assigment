import 'package:flutter/material.dart';

import '../varriable/varriable.dart';
import 'box_widget.dart';

class TimePeriodWidget extends StatelessWidget {
  const TimePeriodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 142,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,

                      value: 0.80,
                      backgroundColor: Color(0xff86B560),
                      color: Color(0xffF5F5F5),
                    ),
                  ),
                  Text("৬ মাস ৬ দিন ")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("সময় অতিবাহিত")
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "মেয়াদকাল",
                style: Variables.style(
                    context, 16, FontWeight.w700, Color(0xff202020)),
              ),
              Row(
                children: [
                  Image.asset("images/Calendar.png"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "১ই জানুয়ারি ২০২৪ - ৩১ই জানুয়ারি ২০৩০",
                    style: Variables.style(context, 12,
                        FontWeight.w500, Color(0xff202020)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "আরও বাকি",
                style: Variables.style(
                    context, 16, FontWeight.w700, Color(0xffFF737A)),
              ),
              Container(
                height: 46,
                width: 198,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoxWidget(
                        oneNum: "০", twoNum: "৫", yearName: "বছর"),
                    BoxWidget(
                        oneNum: "০", twoNum: "৬", yearName: "মাস"),
                    BoxWidget(
                        oneNum: "১", twoNum: "২", yearName: "দিন"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

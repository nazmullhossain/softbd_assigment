import 'package:asseginment/widgets/box_widget.dart';
import 'package:flutter/material.dart';

import '../varriable/varriable.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/circuler_prograss_widget.dart';
import '../widgets/grid_view_widget.dart';
import '../widgets/time_period_widget.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ContainerCard(context),
              SizedBox(
                height: 40,
              ),
              TimePeriodWidget(),
              SizedBox(
                height: 20,
              ),
              GridViewWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget ContainerCard(BuildContext context) {
    return Container(
      height: 98,
      width: 327,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 0.1,
            offset: Offset(0.1, 0.1), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset(
                "images/person.png",
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "মোঃ মোহাইমেনুল রেজা",
                  style: Variables.style(
                      context, 20, FontWeight.w700, Color(0xff202020)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "সফটবিডি লিমিটেড",
                  style: Variables.style(
                      context, 14, FontWeight.w400, Color(0xff6A6A6A)),
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/Map Point.png",
                      height: 16,
                      width: 16,
                    ),
                    Text(
                      "ঢাকা",
                      style: Variables.style(
                          context, 14, FontWeight.w400, Color(0xff6A6A6A)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

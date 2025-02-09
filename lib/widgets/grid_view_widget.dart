import 'package:asseginment/varriable/config.dart';
import 'package:flutter/material.dart';

import '../varriable/varriable.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: dSize(0.7),

      child: GridView.builder(
          itemCount: Variables.items.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 30,


              crossAxisCount: 3),
          itemBuilder: (context, index) {
            final data = Variables.items[index];
            return Container(
              height: 124,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 72,
                    child: Image.asset(data.image),
                  ),
                  Text(
                    data.title,
                    style: Variables.style(context, 16,
                        FontWeight.w600, const Color(0xff202020)),
                  )
                ],
              ),
            );
          }),
    );
  }
}

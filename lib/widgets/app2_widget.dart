import 'package:flutter/material.dart';

import '../varriable/varriable.dart';

class AppBarWidget2 extends StatelessWidget  implements PreferredSizeWidget{
  const AppBarWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight + 20),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset("images/Hamburger Menu.png"),
          ),
          title: Text("সময়রেখা",style: Variables.style(context, 16, FontWeight.w700, Color(0xff000000
          )),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset("images/notification.png"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

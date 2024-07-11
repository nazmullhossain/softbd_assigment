import 'package:asseginment/pages/home_pages.dart';
import 'package:asseginment/varriable/varriable.dart';
import 'package:asseginment/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer_navigation_widget.dart';

class SubmitPages extends StatelessWidget {
  const SubmitPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
           alignment: Alignment.center,
            child: Column(

              children: [
                SizedBox(height: 50,),
                Image.asset('images/right.png'),
                SizedBox(height: 10,),
                Text("নতুন অনুচ্ছেদ সংরক্ষন",style: Variables.style(context, 16, FontWeight.w400, Color(0xff202020)),),
                Text("আপনার সময়রেখাতে নতুন অনুচ্ছেদ সংরক্ষণ সম্পুর্ন",style: Variables.style(context, 14, FontWeight.w400, Color(0xff6A6A6A)),),
                Text("হয়েছে",style: Variables.style(context, 14, FontWeight.w400, Color(0xff6A6A6A)),),
                SizedBox(height: 10,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
                    },
                    child: ButtonWidget(width: 207, hight: 46, fontSize: 18, borderRadis: 8.0, text: "আরও যোগ করুন"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

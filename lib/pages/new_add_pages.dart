import 'package:asseginment/pages/submit_pages.dart';
import 'package:asseginment/varriable/varriable.dart';
import 'package:asseginment/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer_navigation_widget.dart';

class NewAddPages extends StatefulWidget {
  const NewAddPages({super.key});

  @override
  State<NewAddPages> createState() => _NewAddPagesState();
}

class _NewAddPagesState extends State<NewAddPages> {
  String _selectedValue = "";
  String _placeValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "নতুন যোগ করুন",
          style:
              Variables.style(context, 16, FontWeight.w700, Color(0xff000000)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: bodyUI()
        ),
      ),
    );
  }


  void _showDropdown(BuildContext context) async {
    final String selectedValue = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: Variables.dropdownItems.map((String value) {
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, value);
              },
              child: Text(
                value,
                style: Variables.style(
                    context, 14, FontWeight.w400, Color(0xff6A6A6A)),
              ),
            );
          }).toList(),
        );
      },
    );

    if (selectedValue != null) {
      setState(() {
        _selectedValue = selectedValue;
      });
    }
  }

  void _placeDropdown(BuildContext context) async {
    final String selectedValue = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: Variables.placeItems.map((String value) {
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, value);
              },
              child: Text(
                value,
                style: Variables.style(
                    context, 14, FontWeight.w400, Color(0xff6A6A6A)),
              ),
            );
          }).toList(),
        );
      },
    );

    if (selectedValue != null) {
      setState(() {
        _placeValue = selectedValue;
      });
    }
  }


  Widget bodyUI()=>Column(
    children: [
      Container(
        width: 327,
        height: 85,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "অনুচ্ছেদ",
                  style: Variables.style(
                      context, 16, FontWeight.w700, Color(0xff202020)),
                ),
                Text(
                  "৪৫ শব্দ",
                  style: Variables.style(
                      context, 14, FontWeight.w400, Color(0xff6A6A6A)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 0.1,
                    offset:
                    Offset(0.1, 0.1), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "অনুচ্ছেদ লিখুন",
                    hintStyle: Variables.style(context, 14,
                        FontWeight.w400, Color(0xff6A6A6A)),
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(10)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      //onnuchad bibhag
      Container(
        width: 327,
        height: 85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "অনুচ্ছেদের বিভাগ",
              style: Variables.style(
                  context, 16, FontWeight.w700, Color(0xff202020)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 0.1,
                    offset:
                    Offset(0.1, 0.1), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                controller: TextEditingController(text: _selectedValue),
                readOnly: true,
                onTap: () {
                  _showDropdown(context);
                },
                decoration: InputDecoration(
                    hintText: "অনুচ্ছেদের বিভাগ নির্বাচন করুন",
                    hintStyle: Variables.style(context, 14,
                        FontWeight.w400, Color(0xff6A6A6A)),
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Image.asset("images/arrow.png")),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),


      Container(
        width: 327,
        height: 85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "তারিখ ও সময়",
              style: Variables.style(
                  context, 16, FontWeight.w700, Color(0xff202020)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 0.1,
                    offset:
                    Offset(0.1, 0.1), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                controller: TextEditingController(text: _placeValue),
                readOnly: true,
                onTap: () {
                  // _placeDropdown(context);
                },
                decoration: InputDecoration(
                    prefixIcon: Image.asset("images/cl.png"),
                    hintText: "নির্বাচন করুন",
                    hintStyle: Variables.style(context, 14,
                        FontWeight.w400, Color(0xff6A6A6A)),
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Image.asset("images/arrow.png")),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      //place
      Container(
        width: 327,
        height: 85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "স্থান",
              style: Variables.style(
                  context, 16, FontWeight.w700, Color(0xff202020)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 0.1,
                    offset:
                    Offset(0.1, 0.1), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                controller: TextEditingController(text: _placeValue),
                readOnly: true,
                onTap: () {
                  _placeDropdown(context);
                },
                decoration: InputDecoration(
                    prefixIcon: Image.asset("images/m.png"),
                    hintText: "নির্বাচন করুন",
                    hintStyle: Variables.style(context, 14,
                        FontWeight.w400, Color(0xff6A6A6A)),
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Image.asset("images/arrow.png")),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),

      Container(
        width: 327,
        height: 225,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "অনুচ্ছেদের বিবরণ",
                  style: Variables.style(
                      context, 16, FontWeight.w700, Color(0xff202020)),
                ),
                Text(
                  "১২০ শব্দ",
                  style: Variables.style(
                      context, 14, FontWeight.w400, Color(0xff6A6A6A)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 0.1,
                    offset:
                    Offset(0.1, 0.1), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "অনুচ্ছেদ লিখুন",
                    hintStyle: Variables.style(context, 14,
                        FontWeight.w400, Color(0xff6A6A6A)),
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(10)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),

      GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => SubmitPages()));
          },
          child: ButtonWidget(
              width: 327,
              hight: 46,
              fontSize: 18,
              borderRadis: 8.0,
              text: "সংরক্ষন করুন"))
    ],
  );

}


import 'package:asseginment/varriable/config.dart';
import 'package:asseginment/varriable/varriable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart';

import '../controller/content_service.dart';
import '../models/content_model.dart';
import '../widgets/app2_widget.dart';
import '../widgets/button_widget.dart';
import 'new_add_pages.dart';

class DateSelector extends StatefulWidget {
  @override
  _DateSelectorState createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  List<DateTime> dates = [];
  DateTime selectedDate = DateTime.now();
  List<Data> data = [];
  ContentService contentService = ContentService();
  List<Data> filterData = [];
  final String formattedDate = "";
  @override
  void initState() {
    super.initState();
    generateDates();
    getContentData();
    filterData = data;
  }

  List<Data>? result;
  void runFilter(String name) {
    if (name.isEmpty) {
      result = data;
    } else {
      result = data
          .where((element) =>
              element.date!.toLowerCase().contains(name.toLowerCase()))
          .toList();
    }
    setState(() {
      filterData = result!;
    });
  }

  getContentData() async {
    data = await contentService.getContent();
    setState(() {});
  }

  void generateDates() {
    DateTime now = DateTime.now();
    for (int i = -4; i <= 7; i++) {
      dates.add(now.add(Duration(days: i)));
    }
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat.MMMMd('bn'); // Format for Bangla date
    String formattedDate = formatter.format(now);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget2(),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: dSize(0.04),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "আজ, ${formattedDate} ",
                  style: Variables.style(
                      context, 16, FontWeight.w700, Color(0xff202020)),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>NewAddPages()));
                  },
                  child: ButtonWidget(width: 100, hight: 29, fontSize: 12, borderRadis: 20, text:  "নতুন যোগ করুন",),
                )
              ],
            ),
            SizedBox(
              height: dSize(0.03),
            ),
            banglaDate(),
            SizedBox(
              height: dSize(0.07),
            ),
            listViewWidget()

          ],
        ),
      ),
    );
  }
  Widget listViewWidget()=>data.isEmpty?const Center(child: CircularProgressIndicator(),) :Container(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "আজকের কার্যক্রম",
              style: Variables.style(
                  context, 16, FontWeight.w700, Color(0xff202020)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.5,
              child: ListView.builder(
                  itemCount:
                  filterData.isNotEmpty ? filterData.length : data.length,
                  itemBuilder: (context, index) {
                    final content =
                    filterData.isNotEmpty ? filterData[index] : data[index];

                    final DateTime dateTime =
                    DateTime.parse(content.date.toString());
                    final String formattedDate =
                    DateFormat.E('bn').format(dateTime);
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "সকাল\n১১:০০ মি.",
                            style: Variables.style(
                                context,
                                14,
                                FontWeight.w500,
                                Color(0xff202020)),
                          ),
                          Container(
                            height: 150,
                            width: 207,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              gradient: Variables.linear[index %
                                  Variables.linear.length],
                              borderRadius:
                              BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("images/c.png"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "১১:০০ মি.",
                                      style: Variables.style(
                                          context,
                                          12,
                                          FontWeight.w500,
                                          Color(0xffFDFDFD)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${content.name}",
                                  style: Variables.style(
                                      context,
                                      14,
                                      FontWeight.w600,
                                      Color(0xffFDFDFD)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    ),
  );
  Widget banglaDate()=>  Container(
    height: 87,
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
    child: SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, index) {
          DateTime date = dates[index];
          bool isSelected = date.day == selectedDate.day &&
              date.month == selectedDate.month &&
              date.year == selectedDate.year;

          return GestureDetector(
            onTap: () {
              int _timestamp = date.millisecondsSinceEpoch ~/ 1000;
              print(_timestamp.toString());
              runFilter(_timestamp.toString());
              setState(() {
                selectedDate = date;

                // print(selectedDate);
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10, horizontal: 5),
              child: Container(
                padding: const EdgeInsets.all(3.0),
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  // color: isSelected ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(30),

                  border: GradientBoxBorder(
                    width: 1.5,
                    gradient: isSelected
                        ? LinearGradient(colors: [
                      Color(0xff86B560),
                      Color(0xff336F4A)
                    ])
                        : LinearGradient(colors: [
                      Colors.transparent,
                      Colors.transparent
                    ]),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(DateFormat.E('bn').format(date),
                          style: Variables.style(context, 14,
                              FontWeight.w400, Color(0xff6A6A6A))),
                      Text(DateFormat.d('bn').format(date),
                          style: Variables.style(context, 16,
                              FontWeight.w600, Color(0xff202020))),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}

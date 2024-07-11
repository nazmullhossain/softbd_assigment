import 'package:asseginment/pages/home_pages.dart';
import 'package:asseginment/pages/new_add_pages.dart';
import 'package:flutter/material.dart';

import '../pages/date_pages.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  CustomBottomNavigationBar(
      {required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black12,
        //     spreadRadius: 1,
        //     blurRadius: 5,
        //   ),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  onTabTapped(0);
                },
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset("images/ho.png",
                        width: 20,
                        height: 20,
                        color: currentIndex == 0 ? Colors.black : null)),
              ),
              currentIndex == 0
                  ? Container(
                      width: 4,
                      height: 4,
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff86B560),
                            Color(0xff336F4A)
                          ], // Specify your gradient colors
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    )
                  : Container(  padding: EdgeInsets.all(5),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  onTabTapped(1);
                },
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset("images/2hom.png",
                        width: 20,
                        height: 20,
                        color: currentIndex == 1 ? Colors.black : null)),
              ),
              currentIndex == 1
                  ? Container(
                      width: 4,
                      height: 4,
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff86B560),
                            Color(0xff336F4A)
                          ], // Specify your gradient colors
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    )
                  : Container(  padding: EdgeInsets.all(5),)
            ],
          ),


          IconButton(
            icon: Container(
                width: 56,
                height: 56,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff86B560),
                      Color(0xff336F4A)
                    ], // Specify your gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Image.asset("images/hom.png")),
            onPressed: () => onTabTapped(2),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  onTabTapped(3);
                },
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset("images/ho4.png",
                        width: 20,
                        height: 20,
                        color: currentIndex == 3 ? Colors.black : null)),
              ),
              currentIndex == 3
                  ? Container(
                width: 4,
                height: 4,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff86B560),
                      Color(0xff336F4A)
                    ], // Specify your gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              )
                  : Container(  padding: EdgeInsets.all(5),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  onTabTapped(4);
                },
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset("images/5hom.png",
                        width: 20,
                        height: 20,
                        color: currentIndex == 4 ? Colors.black : null)),
              ),
              currentIndex == 4
                  ? Container(
                width: 4,
                height: 4,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff86B560),
                      Color(0xff336F4A)
                    ], // Specify your gradient colors
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              )
                  : Container(  padding: EdgeInsets.all(5),)
            ],
          ),

        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePages(),
    NewAddPages(),
    DateSelector(),
    Center(
      child: Text("New"),
    ),
    Center(
      child: Text("New"),
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTabTapped: onTabTapped,
      ),
    );
  }
}

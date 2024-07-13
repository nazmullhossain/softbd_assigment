import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

class Variables {
  //static const String baseUrl = 'http://tashfia.binduitsolutions.com/api/';
  static const String baseUrl = 'https://api.npoint.io/bc69ae1f6991da81ab9a';

  static List<String> dropdownItems = [
    'তিতাস একটি নদীর নাম',
    'হাজার বছর ধরে',
    'পথের পাঁচালী'
    'চোখের বালি'
  ];
  static List<String> placeItems = ['ঢাকা', 'কুুমিল্লা', 'খুলনা', 'রাজশাহী'];

  static TextStyle style(
      BuildContext context, double size, FontWeight fontWeight, Color color) {
    return GoogleFonts.notoSerifBengali(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
    );
  }
  static List<LinearGradient>linear=[
    LinearGradient(
      colors: [
        Color(0xff86B560),
        Color(0xff336F4A)
      ], // Specify your gradient colors
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [
        Color(0xff202020),
        Color(0xff202020)
      ], // Specify your gradient colors
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ];

  static List<MyListItem> items = [
    MyListItem(
      title: 'মেনু নং\n০০০০১',
      image: 'images/1.png',
    ),
    MyListItem(
      title: 'মেনু নং\n০০০০২',
      image: 'images/2.png',
    ),
    MyListItem(
      title: 'মেনু নং\n০০০০৩',
      image: 'images/3.png',
    ),
    MyListItem(
      title: 'মেনু নং\n০০০০৪',
      image: 'images/4.png',
    ),
    MyListItem(
      title: 'মেনু নং\n০০০০৪',
      image: 'images/4.png',
    ),
    MyListItem(
      title: 'মেনু নং\n০০০০৫',
      image: 'images/5.png',
    ),

  ];
}

class MyListItem {
  final String title;
  final String image;

  MyListItem({required this.title, required this.image});



  static var statusBarTheme = SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark));

  static var portraitMood = SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

// void showToast(message) => Fluttertoast.showToast(
//     msg: message,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.SNACKBAR,
//     timeInSecForIosWeb: 1,
//     backgroundColor: Colors.black87,
//     textColor: Colors.white,
//     fontSize: 16.0
// );

// DateTime today12Am(){
//   DateTime dt = DateTime.now();
//   return DateTime.parse("${dt.year}"
//       "-""${dt.month.toString().length==1?'0${dt.month}':dt.month}"
//       "-""${dt.day.toString().length==1?'0${dt.day}':dt.day}"
//       " 12:00:00");
// }
//
// DateTime today23Pm(){
//   DateTime dt = DateTime.now();
//   return DateTime.parse("${dt.year}"
//       "-""${dt.month.toString().length==1?'0${dt.month}':dt.month}"
//       "-""${dt.day.toString().length==1?'0${dt.day}':dt.day}"
//       " 23:59:59");
// }

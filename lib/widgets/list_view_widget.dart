// import 'package:flutter/material.dart';
//
// import '../varriable/varriable.dart';
//
// class ListViewWidget extends StatelessWidget {
//   const ListViewWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return     Container(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "আজকের কার্যক্রম",
//               style: Variables.style(
//                   context, 16, FontWeight.w700, Color(0xff202020)),
//             ),
//             data == null
//                 ? CircularProgressIndicator()
//                 : SizedBox(
//               height: 380,
//               child: ListView.builder(
//                   itemCount:
//                   fo.isNotEmpty ? fo.length : data!.length,
//                   itemBuilder: (context, index) {
//                     final content =
//                     fo.isNotEmpty ? fo[index] : data![index];
//
//                     final DateTime dateTime =
//                     DateTime.parse(content.date.toString());
//                     final String formattedDate =
//                     DateFormat.E('bn').format(dateTime);
//                     return Container(
//                       margin: EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment:
//                         MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "সকাল\n১১:০০ মি.",
//                             style: Variables.style(
//                                 context,
//                                 14,
//                                 FontWeight.w500,
//                                 Color(0xff202020)),
//                           ),
//                           Container(
//                             height: 150,
//                             width: 207,
//                             padding: EdgeInsets.all(10),
//                             decoration: BoxDecoration(
//                               gradient: Variables.linear[index %
//                                   Variables.linear.length],
//                               borderRadius:
//                               BorderRadius.circular(20.0),
//                             ),
//                             child: Column(
//                               children: [
//                                 Row(
//                                   children: [
//                                     Image.asset("images/c.png"),
//                                     SizedBox(
//                                       width: 5,
//                                     ),
//                                     Text(
//                                       "১১:০০ মি.",
//                                       style: Variables.style(
//                                           context,
//                                           12,
//                                           FontWeight.w500,
//                                           Color(0xffFDFDFD)),
//                                     )
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text(
//                                   "${content.name}",
//                                   style: Variables.style(
//                                       context,
//                                       14,
//                                       FontWeight.w600,
//                                       Color(0xffFDFDFD)),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     );
//                   }),
//             )
//           ],
//         ),
//       ),
//     ),;
//   }
// }

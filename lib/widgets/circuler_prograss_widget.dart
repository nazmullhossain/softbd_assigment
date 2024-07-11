
import 'dart:async';
import 'dart:math' as math;

import 'package:asseginment/varriable/varriable.dart';
import 'package:flutter/material.dart';
class GradientCircularProgressIndicator extends StatefulWidget {
  const GradientCircularProgressIndicator({super.key});

  @override
  State<GradientCircularProgressIndicator> createState() =>
      _GradientCircularProgressIndicatorState();
}

class _GradientCircularProgressIndicatorState
    extends State<GradientCircularProgressIndicator> {
  final ValueNotifier<int> _timerVideo = ValueNotifier<int>(0);
  int maxRecordTime = 60;


  @override
  Widget build(BuildContext context) {
    return progressIndicatorWidget();
  }

  Widget progressIndicatorWidget() {
    return ValueListenableBuilder(
      valueListenable: _timerVideo,
      builder: (BuildContext context, int values, Widget? child) {
        double? per = (double.parse((values / maxRecordTime).toString()));
        return CustomPaint(
          painter: CircularPaint(
            progressValue: 100,
          ),
          child: Container(
            height: 108,
            width: 108,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              border: Border.fromBorderSide(BorderSide(
                color: Colors.transparent,
                width: 2,
              )),
            ),
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: Text(
                "৬ মাস ৬ দিন ",
                style: Variables.style(context, 14, FontWeight.w600, Color(0xff202020)),
              ),
            ),
          ),
        );
      },
    );
  }


}

double deg2rad(double deg) => deg * math.pi / 100;

class CircularPaint extends CustomPainter {
  /// ring/border thickness, default  it will be 8px [borderThickness].
  final double borderThickness;
  final double progressValue;

  CircularPaint({
    this.borderThickness = 12,
    required this.progressValue,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 10, size.height /3 );

    final rect =
    Rect.fromCenter(center: center, width: size.width, height: size.height);

    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = borderThickness;

    //grey background
    canvas.drawArc(
      rect,
      deg2rad(0),
      deg2rad(360),
      false,
      paint,
    );

    Paint progressBarPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = borderThickness
      ..shader = const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xffC0FFC8),
          Color(0xff16A6A7),
        ],
      ).createShader(rect);
    canvas.drawArc(
      rect,
      deg2rad(-10),
      deg2rad(360 * progressValue),
      false,
      progressBarPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
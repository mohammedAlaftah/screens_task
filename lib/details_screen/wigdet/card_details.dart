import 'package:flutter/material.dart';
import 'package:screen_task/constant/responsive_helper.dart';
import 'package:screen_task/widget/custom_text.dart';

class CardDetails extends StatelessWidget {
  final Color color;
  final Color colorIcon;
  final IconData icon;
  final Color borderColor;
  final double borderWidth;

  const CardDetails({
    super.key,
    required this.color,
    required this.colorIcon,
    required this.icon,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    ResponsiveUtils.init(context, 10, 10, 1);

    return Column(
      children: [
        Container(
          width: ResponsiveUtils.screenWidth * 0.175,
          height: ResponsiveUtils.screenHeight * 0.075,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: borderColor, // Use the borderColor parameter
              width: borderWidth, // Use the borderWidth parameter
            ),
          ),
          child: Icon(
            icon,
            color: colorIcon,
            size: 35,
          ),
        ),
      ],
    );
  }
}

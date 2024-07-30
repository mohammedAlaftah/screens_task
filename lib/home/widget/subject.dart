import 'package:flutter/material.dart';
import 'package:screen_task/constant/responsive_helper.dart';
import 'package:screen_task/widget/custom_text.dart';

class SubjectCard extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorIcon;
  final IconData icon;
  final Color borderColor;
  final double borderWidth;

  const SubjectCard({
    super.key,
    required this.text,
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: ResponsiveUtils.screenWidth * 0.18,
          height: ResponsiveUtils.screenHeight * 0.08,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(17),
            border: Border.all(
              color: borderColor, // Use the borderColor parameter
              width: borderWidth, // Use the borderWidth parameter
            ),
          ),
          child: Icon(
            icon,
            color: colorIcon,
            size: 40,
          ),
        ),
        CustomText(
          text: text,
          fontSize: ResponsiveUtils.fontSize * 0.35,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}

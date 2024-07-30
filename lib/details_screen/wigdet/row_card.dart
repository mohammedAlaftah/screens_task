import 'package:flutter/material.dart';
import 'package:screen_task/constant/responsive_helper.dart';
import 'package:screen_task/details_screen/wigdet/card_details.dart';
import 'package:screen_task/widget/custom_text.dart';

class RowCard extends StatelessWidget {
  final Color color;
  final Color iconColor;
  final Color borderColor;
  final IconData icon;
  final String textTitle;
  final String textDescription;
  const RowCard(
      {super.key,
      required this.color,
      required this.iconColor,
      required this.borderColor,
      required this.icon,
      required this.textTitle,
      required this.textDescription});

  @override
  Widget build(BuildContext context) {
    ResponsiveUtils.init(context, 10, 10, 1);
    return Container(
        child: Row(
      children: [
        CardDetails(
            color: color,
            icon: icon,
            colorIcon: iconColor,
            borderColor: borderColor,
            borderWidth: 2),
        SizedBox(
          width: ResponsiveUtils.screenWidth * 0.05,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: textTitle,
              fontSize: ResponsiveUtils.fontSize * 0.44,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: ResponsiveUtils.screenHeight * 0.01,
            ),
            CustomText(
              text: textDescription,
              fontSize: ResponsiveUtils.fontSize * 0.35,
            )
          ],
        )
      ],
    ));
  }
}

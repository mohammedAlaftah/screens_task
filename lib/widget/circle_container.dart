import 'package:flutter/material.dart';
import 'package:screen_task/constant/responsive_helper.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveUtils.init(context, 10, 10, 1);
    return Container(
      width: ResponsiveUtils.screenWidth * 0.12,
      height: ResponsiveUtils.screenHeight * 0.051,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16), // Add border radius here
        child: Image.asset(
          'assets/images/person.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

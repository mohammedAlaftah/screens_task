import 'package:flutter/material.dart';
import 'package:screen_task/constant/responsive_helper.dart';
import 'package:screen_task/widget/custom_text.dart';

class VideoContainer extends StatelessWidget {
  const VideoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveUtils.screenWidth,
      height: ResponsiveUtils.screenHeight * 0.22,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: ResponsiveUtils.screenWidth * 0.39,
            height: ResponsiveUtils.screenHeight * 0.17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Add border radius here
              child: Image.asset(
                'assets/images/person.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: ResponsiveUtils.screenWidth * 0.01,
          ),
          Container(
            width: ResponsiveUtils.screenWidth * 0.46,
            height: ResponsiveUtils.screenHeight * 0.17,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    CustomText(
                      text: '4.6',
                      fontSize: ResponsiveUtils.fontSize * 0.5,
                    )
                  ],
                ),
                CustomText(
                  text: 'Science Technology',
                  fontSize: ResponsiveUtils.fontSize * 0.48,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: ResponsiveUtils.screenHeight * 0.01,
                ),
                CustomText(
                  text: 'By Mohammed A.Laftah',
                  fontSize: ResponsiveUtils.fontSize * 0.35,
                ),
                SizedBox(
                  height: ResponsiveUtils.screenHeight * 0.01,
                ),
                Container(
                  width: ResponsiveUtils.screenWidth * 0.25,
                  height: ResponsiveUtils.screenHeight * 0.04,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        20.0), // Customize the border radius here
                    child: FloatingActionButton(
                      backgroundColor: Color(0xfff0807d),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            22.0), // Customize the border radius here as well
                      ),
                      child: CustomText(
                        text: 'Continue',
                        color: Colors.white,
                        fontSize: ResponsiveUtils.fontSize * 0.35,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

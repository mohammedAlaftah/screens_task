import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:screen_task/constant/responsive_helper.dart';
import 'package:screen_task/widget/custom_text.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveUtils.init(context, 10, 10, 1);

    return Stack(
      children: [
        Container(
          width: ResponsiveUtils.screenWidth * 0.9,
          height: ResponsiveUtils.screenHeight * 0.17,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ], color: Color(0xfff0807d), borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomText(
                  color: Colors.white,
                  text: 'Chemistry final',
                  fontSize: ResponsiveUtils.fontSize * 0.6,
                  fontWeight: FontWeight.bold),
              CustomText(
                color: Colors.white,
                text: 'exams',
                fontSize: ResponsiveUtils.fontSize * 0.6,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: ResponsiveUtils.screenHeight * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  ),
                  CustomText(
                    color: Colors.white,
                    text: ' 45 minutes',
                    fontSize: ResponsiveUtils.fontSize * 0.44,
                    //fontWeight: FontWeight.bold
                  ),
                ],
              )
            ]),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:screen_task/constant/responsive_helper.dart';
// import 'package:screen_task/widget/custom_text.dart';

// class CardContainer extends StatelessWidget {
//   const CardContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ResponsiveUtils.init(context, 10, 10, 1);

//     return SizedBox(
//       width: ResponsiveUtils.screenWidth,
//       height: ResponsiveUtils.screenHeight *
//           0.4, // Ensure the stack has a height constraint
//       child: Stack(
//         children: [
//           // Image at the top

//           // Card below the image

//           Container(
//             width: ResponsiveUtils.screenWidth * 0.9,
//             height: ResponsiveUtils.screenHeight * 0.17,
//             decoration: BoxDecoration(
//               color: Color(0xfff0807d),
//               borderRadius: BorderRadius.circular(17),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 20, left: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CustomText(
//                     color: Colors.white,
//                     text: 'Chemistry final',
//                     fontSize: ResponsiveUtils.fontSize * 0.6,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   CustomText(
//                     color: Colors.white,
//                     text: 'exams',
//                     fontSize: ResponsiveUtils.fontSize * 0.6,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   SizedBox(
//                     height: ResponsiveUtils.screenHeight * 0.015,
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.notifications_outlined,
//                         color: Colors.white,
//                       ),
//                       CustomText(
//                         color: Colors.white,
//                         text: 'minutes',
//                         fontSize: ResponsiveUtils.fontSize * 0.4,
//                         //fontWeight: FontWeight.bold
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 200,
//             bottom: 240,
//             child: Container(
//               height: ResponsiveUtils.screenHeight * 0.1,
//               width: ResponsiveUtils.screenWidth * 0.3,
//               child: Image.asset(
//                 'assets/images/Animation - 1722301723206.gif',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

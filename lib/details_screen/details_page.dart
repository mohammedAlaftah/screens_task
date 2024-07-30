import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';
import 'package:screen_task/constant/responsive_helper.dart';
import 'package:screen_task/details_screen/wigdet/row_card.dart';
import 'package:screen_task/widget/custom_text.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveUtils.init(context, 10, 10, 1);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Row(
            children: [
              CustomText(
                text: "Physics",
                fontSize: ResponsiveUtils.fontSize * 0.7,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                width: ResponsiveUtils.screenWidth * 0.34,
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Container(
              width: ResponsiveUtils.screenWidth,
              height: ResponsiveUtils.screenHeight * 0.27,
              child: SvgPicture.asset('assets/images/books-svgrepo-com.svg'),
            ),
            SizedBox(
              height: ResponsiveUtils.screenHeight * 0.03,
            ),
            Container(
              width: ResponsiveUtils.screenWidth,
              height: ResponsiveUtils.screenHeight * 0.13,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Advanced Physics',
                    fontSize: ResponsiveUtils.fontSize * 0.55,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: ResponsiveUtils.screenHeight * 0.01,
                  ),
                  Expanded(
                    child: Container(
                      height: ResponsiveUtils.screenHeight * 0.2,
                      child: ReadMoreText(
                        'This is an example of a custom text widget that will automatically wrap text to the next line when it is too long to fit in one line.',
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        textAlign: TextAlign.justify,
                        trimCollapsedText: '...read more',
                        trimExpandedText: ' show less',
                        lessStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'MADETommySoft-Medium (1)',
                            fontSize: ResponsiveUtils.fontSize * 0.4),
                        moreStyle: TextStyle(
                            color: Colors.pink.shade200,
                            fontFamily: 'MADETommySoft-Medium (1)',
                            fontSize: ResponsiveUtils.fontSize * 0.4),
                        style: TextStyle(
                            fontFamily: 'MADETommySoft-Medium (1)',
                            fontSize: ResponsiveUtils.fontSize * 0.4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomText(
              text: 'Subject Details',
              fontSize: ResponsiveUtils.fontSize * 0.5,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: ResponsiveUtils.screenHeight * 0.02,
            ),
            Container(
              width: ResponsiveUtils.screenWidth,
              height: ResponsiveUtils.screenHeight * 0.32,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RowCard(
                    textTitle: '18 online lectures',
                    textDescription: 'You can use any text here for test',
                    color: Colors.transparent,
                    icon: Icons.video_camera_front_outlined,
                    iconColor: Colors.pink.shade100,
                    borderColor: Colors.pink.shade100,
                  ),
                  RowCard(
                    textTitle: '15 chapter +5 test exam',
                    textDescription: 'You can use any text here for test',
                    color: Colors.transparent,
                    icon: Icons.document_scanner,
                    iconColor: Colors.blueAccent.shade100,
                    borderColor: Colors.blueAccent.shade100,
                  ),
                  RowCard(
                    textTitle: '20 download resources',
                    textDescription: 'You can use any text here for test',
                    color: Colors.transparent,
                    icon: Icons.edit_document,
                    iconColor: Colors.orange.shade100,
                    borderColor: Colors.orange.shade100,
                  )
                ],
              ),
            ),
            SizedBox(
              height: ResponsiveUtils.screenHeight * 0.02,
            ),
            Container(
              width: ResponsiveUtils.screenWidth,
              height: ResponsiveUtils.screenHeight * 0.06,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FloatingActionButton(
                  backgroundColor: Color(0xfff0807d),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: CustomText(
                    text: 'Continue',
                    color: Colors.white,
                    fontSize: ResponsiveUtils.fontSize * 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:screen_task/constant/responsive_helper.dart';
import 'package:screen_task/details_screen/wigdet/row_card.dart';
import 'package:screen_task/navigation/navigation_bloc.dart';
import 'package:screen_task/navigation/navigation_state.dart';
import 'package:screen_task/widget/circle_container.dart';
import 'package:screen_task/widget/custom_text.dart';

class MaterialPageView extends StatelessWidget {
  const MaterialPageView({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveUtils.init(context, 10, 10, 1);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: CustomText(
            text: 'Materials',
            fontWeight: FontWeight.bold,
            fontSize: ResponsiveUtils.fontSize * 0.7,
          ),
          actions: [CircleContainer()],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                width: ResponsiveUtils.screenWidth,
                height: ResponsiveUtils.screenHeight * 0.27,
                child: SvgPicture.asset(
                  'assets/images/cup.svg',
                ),
              ),
              SizedBox(
                height: ResponsiveUtils.screenHeight * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    text: 'Document',
                    fontSize: ResponsiveUtils.fontSize * 0.43,
                  ),
                  CustomText(
                    text: 'Exam',
                    fontSize: ResponsiveUtils.fontSize * 0.43,
                  ),
                  Container(
                    width: ResponsiveUtils.screenWidth * 0.26,
                    height: ResponsiveUtils.screenHeight * 0.055,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.grey.withOpacity(0.3)),
                    child: Center(
                        child: CustomText(
                      text: 'Passed',
                      fontSize: ResponsiveUtils.fontSize * 0.4,
                      fontWeight: FontWeight.bold,
                    )),
                  )
                ],
              ),
              SizedBox(
                height: ResponsiveUtils.screenHeight * 0.02,
              ),
              Container(
                width: ResponsiveUtils.screenWidth,
                height: ResponsiveUtils.screenHeight * 0.4,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          RowCard(
                              // color: Colors.pink.shade100.withOpacity(0.6),
                              color: Colors.white.withOpacity(0.3),
                              iconColor: Colors.pink.withOpacity(0.3),
                              borderColor: Colors.pink.shade200,
                              icon: Icons.wine_bar_rounded,
                              textTitle: 'Physics',
                              textDescription: 'You have completed 28/32'),
                          SizedBox(
                            width: ResponsiveUtils.screenWidth * 0.05,
                          ),
                          CircularPercentIndicator(
                            radius: 30,
                            lineWidth: 7,
                            percent: 0.85,
                            progressColor: Colors.pink.shade200,
                            backgroundColor: Colors.white,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: CustomText(
                              fontSize: ResponsiveUtils.fontSize * 0.48,
                              color: Colors.pink.shade200,
                              text: '85',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          RowCard(
                              color: Colors.white.withOpacity(0.3),

                              // color: Color(0xffa1b8dd).withOpacity(0.3),
                              iconColor: Color(0xffa1b8dd),
                              borderColor: Color(0xffa1b8dd).withOpacity(0.8),
                              icon: Icons.whatshot_rounded,
                              textTitle: 'Science',
                              textDescription: 'You have completed 28/32'),
                          SizedBox(
                            width: ResponsiveUtils.screenWidth * 0.05,
                          ),
                          CircularPercentIndicator(
                            radius: 30,
                            lineWidth: 7,
                            percent: 0.75,
                            progressColor: Color(0xffa1b8dd).withOpacity(0.8),
                            backgroundColor: Colors.white,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: CustomText(
                              fontSize: ResponsiveUtils.fontSize * 0.48,
                              color: Color(0xffa1b8dd).withOpacity(0.8),
                              text: '75',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          RowCard(
                              color: Colors.white.withOpacity(0.3),

                              // color: Colors.orange.shade200.withOpacity(0.3),
                              iconColor: Colors.orange,
                              borderColor: Colors.orange.shade200,
                              icon: Icons.science,
                              textTitle: 'Chemistry',
                              textDescription: 'You have completed 28/32'),
                          SizedBox(
                            width: ResponsiveUtils.screenWidth * 0.05,
                          ),
                          CircularPercentIndicator(
                            radius: 30,
                            lineWidth: 7,
                            percent: 0.4,
                            progressColor: Colors.orange.shade200,
                            backgroundColor: Colors.white,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: CustomText(
                              fontSize: ResponsiveUtils.fontSize * 0.48,
                              color: Colors.orange.shade200,
                              text: '40',
                            ),
                          )
                        ],
                      )
                    ]),
              )
            ],
          ),
        ),
        bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
            builder: (context, state) {
          int currentIndex = 0;
          if (state is NavigationItemSelectedState) {
            currentIndex = state.selectedIndex;
          }

          return BottomNavigationBar(
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.pink,
            showSelectedLabels: false, // Hide selected labels
            showUnselectedLabels: false, // Hide unselected labels
            currentIndex: currentIndex,
            elevation: 0, // Set elevation to 0 to remove shadow
            onTap: (index) {
              context.read<NavigationBloc>().add(NavigationItemSelected(index));
              switch (index) {
                case 0:
                  context.go('/'); // Home
                  break;
                case 1:
                  context.go('/materials'); // Materials
                  break;
                case 2:
                  context.go('/add_chart'); // Add Chart
                  break;
                case 3:
                  context.go('/groups'); // Groups
                  break;
                case 4:
                  context.go('/settings'); // Settings
                  break;
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.book_outlined,
                  size: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_chart,
                  size: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  size: 30,
                ),
                label: 'Groups',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                ),
                label: '',
              ),
            ],
          );
        }));
  }
}

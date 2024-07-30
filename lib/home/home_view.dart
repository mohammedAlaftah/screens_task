// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:screen_task/constant/responsive_helper.dart';
// import 'package:screen_task/home/widget/card.dart';
// import 'package:screen_task/home/widget/subject.dart';
// import 'package:screen_task/home/widget/video_container.dart';
// import 'package:screen_task/navigation/navigation_bloc.dart';
// import 'package:screen_task/navigation/navigation_state.dart';
// import 'package:screen_task/widget/circle_container.dart';
// import 'package:screen_task/widget/custom_text.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ResponsiveUtils.init(context, 10, 10, 1);

//     return Scaffold(
//         appBar: AppBar(
//           title: CustomText(
//             text: 'My Classes',
//             fontWeight: FontWeight.bold,
//             fontSize: ResponsiveUtils.fontSize * 0.7,
//           ),
//           actions: [
//             Icon(Icons.search),
//             SizedBox(
//               width: ResponsiveUtils.screenWidth * 0.04,
//             ),
//             Icon(Icons.notifications_on_outlined),
//             SizedBox(
//               width: ResponsiveUtils.screenWidth * 0.04,
//             ),
//             CircleContainer()
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: ListView(
//             children: [
//               SizedBox(
//                 height: ResponsiveUtils.screenHeight * 0.015,
//               ),
//               CustomText(
//                   text: 'Hello!',
//                   fontSize: ResponsiveUtils.fontSize * 1.1,
//                   fontWeight: FontWeight.bold),
//               CustomText(
//                   text: 'Borkat ulla',
//                   fontSize: ResponsiveUtils.fontSize * 1.2,
//                   fontWeight: FontWeight.bold),
//               Center(child: CardContainer()),
//               SizedBox(
//                 height: ResponsiveUtils.screenHeight * 0.02,
//               ),
//               Container(
//                 width: ResponsiveUtils.screenWidth,
//                 height: ResponsiveUtils.screenHeight * 0.08,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CustomText(
//                             text: 'Subject',
//                             fontSize: ResponsiveUtils.fontSize * 0.5,
//                             fontWeight: FontWeight.bold),
//                         CustomText(
//                           color: Colors.grey,
//                           text: 'High Schoole - 12 Grade',
//                           fontSize: ResponsiveUtils.fontSize * 0.4,
//                         ),
//                       ],
//                     ),
//                     CustomText(
//                       color: Colors.pink.shade200,
//                       text: 'see all',
//                       fontSize: ResponsiveUtils.fontSize * 0.45,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: ResponsiveUtils.screenHeight * 0.01,
//               ),
//               Container(
//                   width: ResponsiveUtils.screenWidth,
//                   height: ResponsiveUtils.screenHeight * 0.11,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       GestureDetector(
//                         child: SubjectCard(
//                           borderColor: Colors.transparent,
//                           borderWidth: 0,
//                           text: 'Physics',
//                           icon: Icons.wine_bar_rounded,
//                           color: Colors.pink.shade100.withOpacity(0.6),
//                           colorIcon: Colors.pink,
//                         ),
//                         onTap: () => context.go('/details'),
//                       ),
//                       GestureDetector(
//                         child: SubjectCard(
//                           borderColor: Colors.transparent,
//                           borderWidth: 0,
//                           text: 'Science',
//                           icon: Icons.whatshot_rounded,
//                           color: Colors.blueAccent.shade100.withOpacity(0.6),
//                           colorIcon: Colors.blueAccent,
//                         ),
//                         onTap: () => context.go('/details'),
//                       ),
//                       GestureDetector(
//                         child: SubjectCard(
//                           borderColor: Colors.transparent,
//                           borderWidth: 0,
//                           text: 'Chemistry',
//                           icon: Icons.science,
//                           color: Colors.orange.shade100.withOpacity(0.6),
//                           colorIcon: Colors.orange,
//                         ),
//                         onTap: () => context.go('/details'),
//                       ),
//                       GestureDetector(
//                         child: SubjectCard(
//                           borderColor: Colors.transparent,
//                           borderWidth: 0,
//                           text: 'Biology',
//                           icon: Icons.biotech,
//                           color: Colors.green.shade200.withOpacity(0.6),
//                           colorIcon: Colors.green,
//                         ),
//                         onTap: () => context.go('/details'),
//                       )
//                     ],
//                   )),
//               SizedBox(
//                 height: ResponsiveUtils.screenHeight * 0.02,
//               ),
//               Container(
//                 width: ResponsiveUtils.screenWidth,
//                 height: ResponsiveUtils.screenHeight * 0.03,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomText(
//                         text: 'Video Course',
//                         fontSize: ResponsiveUtils.fontSize * 0.5,
//                         fontWeight: FontWeight.bold),
//                     CustomText(
//                       color: Colors.pink.shade200,
//                       text: 'see all',
//                       fontSize: ResponsiveUtils.fontSize * 0.45,
//                     ),
//                   ],
//                 ),
//               ),
//               VideoContainer()
//             ],
//           ),
//         ),
//         bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
//             builder: (context, state) {
//           int currentIndex = 0;
//           if (state is NavigationItemSelectedState) {
//             currentIndex = state.selectedIndex;
//           }

//           return BottomNavigationBar(
//             backgroundColor: Colors.white,
//             unselectedItemColor: Colors.grey,
//             selectedItemColor: Colors.pink,
//             showSelectedLabels: false, // Hide selected labels
//             showUnselectedLabels: false, // Hide unselected labels
//             currentIndex: currentIndex,
//             elevation: 0, // Set elevation to 0 to remove shadow
//             onTap: (index) {
//               context.read<NavigationBloc>().add(NavigationItemSelected(index));
//               switch (index) {
//                 case 0:
//                   context.go('/'); // Home
//                   break;
//                 case 1:
//                   context.go('/materials'); // Materials
//                   break;
//                 case 2:
//                   context.go('/add_chart'); // Add Chart
//                   break;
//                 case 3:
//                   context.go('/groups'); // Groups
//                   break;
//                 case 4:
//                   context.go('/settings'); // Settings
//                   break;
//               }
//             },
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.home_outlined,
//                   size: 35,
//                 ),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.book_outlined,
//                   size: 30,
//                 ),
//                 label: 'Materials',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.add_chart,
//                   size: 30,
//                 ),
//                 label: 'Add Chart',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.chat_bubble_outline,
//                   size: 30,
//                 ),
//                 label: 'Groups',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.person_outline,
//                   size: 30,
//                 ),
//                 label: 'Settings',
//               ),
//             ],
//           );
//         }));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:screen_task/constant/responsive_helper.dart';
import 'package:screen_task/home/widget/card.dart';
import 'package:screen_task/home/widget/subject.dart';
import 'package:screen_task/home/widget/video_container.dart';
import 'package:screen_task/navigation/navigation_bloc.dart';
import 'package:screen_task/navigation/navigation_state.dart';
import 'package:screen_task/widget/circle_container.dart';
import 'package:screen_task/widget/custom_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveUtils.init(context, 10, 10, 1);

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'My Classes',
          fontWeight: FontWeight.bold,
          fontSize: ResponsiveUtils.fontSize * 0.7,
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: ResponsiveUtils.screenWidth * 0.04,
          ),
          Icon(Icons.notifications_on_outlined),
          SizedBox(
            width: ResponsiveUtils.screenWidth * 0.04,
          ),
          CircleContainer()
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(
              height: ResponsiveUtils.screenHeight * 0.015,
            ),
            CustomText(
              text: 'Hello!',
              fontSize: ResponsiveUtils.fontSize * 1.1,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              text: 'Borkat ulla',
              fontSize: ResponsiveUtils.fontSize * 1.2,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: ResponsiveUtils.screenHeight * 0.02,
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 40,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                        width: ResponsiveUtils.screenWidth,
                        height: ResponsiveUtils.screenHeight * 0.135,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfff0807d),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xfff0807d),
                      ),
                      margin: EdgeInsets.all(8),
                      width: ResponsiveUtils.screenWidth,
                      height: ResponsiveUtils.screenHeight * 0.145,
                    ),
                  ),
                  CardContainer(),
                ],
              ),
            ),
            SizedBox(
              height: ResponsiveUtils.screenHeight * 0.06,
            ),
            Container(
              width: ResponsiveUtils.screenWidth,
              height: ResponsiveUtils.screenHeight * 0.08,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Subject',
                        fontSize: ResponsiveUtils.fontSize * 0.5,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        color: Colors.grey,
                        text: 'High Schoole - 12 Grade',
                        fontSize: ResponsiveUtils.fontSize * 0.4,
                      ),
                    ],
                  ),
                  CustomText(
                    color: Colors.pink.shade200,
                    text: 'see all',
                    fontSize: ResponsiveUtils.fontSize * 0.45,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ResponsiveUtils.screenHeight * 0.01,
            ),
            Container(
              width: ResponsiveUtils.screenWidth,
              height: ResponsiveUtils.screenHeight * 0.11,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: SubjectCard(
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      text: 'Physics',
                      icon: Icons.wine_bar_rounded,
                      color: Colors.pink.shade100.withOpacity(0.6),
                      colorIcon: Colors.pink,
                    ),
                    onTap: () => context.go('/details'),
                  ),
                  GestureDetector(
                    child: SubjectCard(
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      text: 'Science',
                      icon: Icons.whatshot_rounded,
                      color: Colors.blueAccent.shade100.withOpacity(0.6),
                      colorIcon: Colors.blueAccent,
                    ),
                    onTap: () => context.go('/details'),
                  ),
                  GestureDetector(
                    child: SubjectCard(
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      text: 'Chemistry',
                      icon: Icons.science,
                      color: Colors.orange.shade100.withOpacity(0.6),
                      colorIcon: Colors.orange,
                    ),
                    onTap: () => context.go('/details'),
                  ),
                  GestureDetector(
                    child: SubjectCard(
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      text: 'Biology',
                      icon: Icons.biotech,
                      color: Colors.green.shade200.withOpacity(0.6),
                      colorIcon: Colors.green,
                    ),
                    onTap: () => context.go('/details'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ResponsiveUtils.screenHeight * 0.02,
            ),
            Container(
              width: ResponsiveUtils.screenWidth,
              height: ResponsiveUtils.screenHeight * 0.03,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Video Course',
                    fontSize: ResponsiveUtils.fontSize * 0.54,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    color: Colors.pink.shade200,
                    text: 'see all',
                    fontSize: ResponsiveUtils.fontSize * 0.45,
                  ),
                ],
              ),
            ),
            VideoContainer()
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
                  size: 35,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.book_outlined,
                  size: 30,
                ),
                label: 'Materials',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_chart,
                  size: 30,
                ),
                label: 'Add Chart',
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
                label: 'Settings',
              ),
            ],
          );
        },
      ),
    );
  }
}

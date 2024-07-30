import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screen_task/constant/responsive_helper.dart';
import 'package:screen_task/details_screen/details_page.dart';
import 'package:screen_task/home/home_view.dart';
import 'package:screen_task/materila/material_page.dart';
import 'package:screen_task/navigation/navigation_bloc.dart';
import 'package:screen_task/route/router.dart';
import 'package:screen_task/theme/theme_bloc.dart';
import 'package:screen_task/theme/theme_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveUtils.init(context, 10, 10, 1);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationBloc()),
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            routerConfig: router,
            debugShowCheckedModeBanner: false,
            theme: themeState.themeData,
          );
        },
      ),
    );
  }
}

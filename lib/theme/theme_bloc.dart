import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(
          primaryColor: Color(0xfff0807d),
          borderColor: Color(0xffd16267),
          borderWidth: 2.0,
          textStyle: TextStyle(
            fontFamily: 'MADETommySoft-Medium',
            fontSize: 16,
          ),
        ));

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ChangeTheme) {
      yield ThemeState(
        primaryColor: event.primaryColor,
        borderColor: event.borderColor,
        borderWidth: event.borderWidth,
        textStyle: event.textStyle,
      );
    }
  }
}

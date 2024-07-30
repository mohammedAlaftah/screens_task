import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:screen_task/navigation/navigation_state.dart';

part 'navigation_event.dart';
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial(0)) {
    on<NavigationItemSelected>((event, emit) {
      emit(NavigationItemSelectedState(event.index));
    });
  }
}



import 'package:equatable/equatable.dart';


abstract class NavigationState extends Equatable {
  const NavigationState();

  @override
  List<Object> get props => [];
}

class NavigationInitial extends NavigationState {
  final int selectedIndex;

  const NavigationInitial(this.selectedIndex);

  @override
  List<Object> get props => [selectedIndex];
}

class NavigationItemSelectedState extends NavigationState {
  final int selectedIndex;

  const NavigationItemSelectedState(this.selectedIndex);

  @override
  List<Object> get props => [selectedIndex];
}

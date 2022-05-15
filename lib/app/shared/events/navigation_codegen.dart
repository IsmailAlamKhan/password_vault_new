import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../event_bus.dart';

part 'navigation_codegen.freezed.dart';

@freezed
class NavigationEvent with _$NavigationEvent, Event {
  const factory NavigationEvent.page(String route, bool replaceAll) = NavigationEventPage;

  const factory NavigationEvent.pop() = NavigationEventPop;

  const factory NavigationEvent.dialog(WidgetBuilder builder) = NavigationEventDialog;

  const factory NavigationEvent.snackbar(SnackBar snackBar) = NavigationEventSnackbar;
}

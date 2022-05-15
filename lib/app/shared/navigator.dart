import 'package:flutter/material.dart';

import 'event_bus.dart';
import 'events/navigation_codegen.dart';

mixin NavigatorController {
  EventBus get eventBus;

  void push(String route, [bool replaceAll = false]) {
    eventBus.emit(NavigationEvent.page(route, replaceAll));
  }

  void pop() => eventBus.emit(const NavigationEvent.pop());

  void openDialog(WidgetBuilder builder) {
    eventBus.emit(NavigationEvent.dialog(builder));
  }

  void showSnackbar(String msg) {
    eventBus.emit(NavigationEvent.snackbar(SnackBar(content: Text(msg))));
  }
}

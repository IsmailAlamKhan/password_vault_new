import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/event_bus.dart';
import '../../shared/events/events.dart';
import '../../shared/navigator.dart';
import '../../shared/services/password_data.dart';
import '../../shared/widgets/widgets.dart';
import '../password_form/view/password_form_view.dart';

class PasswordViewController with NavigatorController {
  @override
  final EventBus eventBus;
  final bool isFullScreen;
  final ValueChanged<int>? onPasswordSelected;
  final PasswordService passwordService;

  PasswordViewController({
    required WidgetRef ref,
    required this.isFullScreen,
    required this.onPasswordSelected,
  })  : eventBus = ref.read(eventBusProvider),
        passwordService = ref.read(passwordServiceProvider);
  Future<int> getNewPassId() async {
    final completer = Completer<int>();
    final subscription = eventBus.on<PasswordAddUpdateEvent>((event) {
      completer.complete(event.id);
    });
    final _id = await completer.future;
    subscription.cancel();
    return _id;
  }

  Future<void> newPassword() async {
    if (isFullScreen) {
      push(PasswordForm.path);
    } else {
      onPasswordSelected?.call(0);
    }
    final id = await getNewPassId();
    onPasswordSelected?.call(id);
  }

  Future<void> editPassword(int id) async {
    if (isFullScreen) {
      push('${PasswordForm.path}/$id');
      final newId = await getNewPassId();
      onPasswordSelected?.call(newId);
    } else {
      onPasswordSelected?.call(id);
    }
  }

  Future<void> deletePassword(int value) async {
    final confirmed = await ConfirmDialog.open(
      openDialog,
      messege: 'Are you sure you want to delete this password?',
    );
    if (confirmed) {
      passwordService.delete(value);
      eventBus.emit(PasswordDeleteEvent(value));
    }
  }
}

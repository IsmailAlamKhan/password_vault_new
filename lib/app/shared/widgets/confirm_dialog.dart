import 'dart:async';

import 'package:flutter/material.dart';

import 'button.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog._({
    super.key,
    required this.messege,
    this.title,
    this.onConfirm,
    this.onCancel,
  });
  final String messege;
  final String? title;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;

  static Future<bool> openWithContext(
    BuildContext context, {
    required String messege,
    String? title,
  }) async =>
      (await showDialog<bool>(
        context: context,
        builder: (context) => ConfirmDialog._(
          messege: messege,
          title: title,
        ),
      )) ??
      false;

  static Future<bool> open(
    void Function(WidgetBuilder builder) openDialog, {
    required String messege,
    String? title,
  }) {
    final completer = Completer<bool>();
    openDialog(
      (_) => ConfirmDialog._(
        messege: messege,
        title: title,
        onCancel: () => completer.complete(false),
        onConfirm: () => completer.complete(true),
      ),
    );
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: AlertDialog(
        title: Text(title ?? 'Delete password'),
        content: Text(messege),
        actions: [
          FilledButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
              onCancel?.call();
            },
          ),
          FilledButton(
            child: const Text('Delete'),
            onPressed: () {
              Navigator.of(context).pop();
              onConfirm?.call();
            },
          ),
        ],
      ),
    );
  }
}

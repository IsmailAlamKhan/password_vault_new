import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignupView extends ConsumerWidget {
  const SignupView({Key? key}) : super(key: key);

  static const path = '/signup';

  static GoRoute get route => GoRoute(path: path, builder: (context, state) => const SignupView());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold();
  }
}

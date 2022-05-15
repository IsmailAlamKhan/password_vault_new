import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);
  static const path = '/';

  static GoRoute get route => GoRoute(path: path, builder: (context, state) => const HomeView());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}

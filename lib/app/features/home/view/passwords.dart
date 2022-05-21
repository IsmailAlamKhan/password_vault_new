import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/controllers/current_user.dart';
import '../../../shared/logger.dart';
import '../../../shared/providers.dart';

class PasswordList extends ConsumerWidget {
  const PasswordList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.read(currentUserProvider);
    final passwords = ref.watch(passwordDataProvider(currentUser!.id));
    return passwords.when(
      data: (passwords) => ListView.builder(
        itemCount: passwords.length,
        itemBuilder: (context, index) {
          final password = passwords[index];
          return ListTile(
            leading: Image.network(password.provider.imagePath),
            title: password.username == null ? null : Text(password.username!),
            subtitle: Text(passwords[index].provider.name),
          );
        },
      ),
      error: (error, stack) {
        logError('Password List', error: error, stackTrace: stack);
        return Text(error.toString());
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

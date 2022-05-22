import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/controllers/current_user.dart';
import '../../../shared/logger.dart';
import '../../../shared/models/password_codegen.dart';
import '../../../shared/providers.dart';
import '../passwords_controller.dart';

class PasswordView extends HookConsumerWidget {
  const PasswordView({
    super.key,
    this.isFullScreen = false,
    this.onPasswordSelected,
  });
  final bool isFullScreen;
  final ValueChanged<int>? onPasswordSelected;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.read(currentUserProvider);
    if (currentUser == null) {
      return const SizedBox.shrink();
    }
    final passwords = ref.watch(passwordByUserProvider(currentUser.id));
    final controller = useMemoized(() => PasswordViewController(
          ref: ref,
          isFullScreen: isFullScreen,
          onPasswordSelected: onPasswordSelected,
        ));
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: controller.newPassword,
        child: const Icon(Icons.add),
      ),
      body: DecoratedBox(
        decoration: isFullScreen
            ? const BoxDecoration()
            : BoxDecoration(
                border: Border(right: BorderSide(color: Theme.of(context).dividerColor)),
              ),
        child: passwords.when(
          data: (passwords) => ListView.builder(
            itemCount: passwords.length,
            itemBuilder: (context, index) {
              final password = passwords[index];
              return _PasswordItem(
                password: password,
                onEdit: controller.editPassword,
                onDelete: controller.deletePassword,
              );
            },
          ),
          error: (error, stack) {
            logError('Password List', error: error, stackTrace: stack);
            return Text(error.toString());
          },
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}

class _PasswordItem extends StatelessWidget {
  const _PasswordItem({
    super.key,
    required this.password,
    required this.onEdit,
    required this.onDelete,
  });

  final PasswordData password;
  final ValueChanged<int>? onEdit;
  final ValueChanged<int>? onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: SizedBox.square(
          dimension: 50,
          child: Image.network(password.provider.imagePath),
        ),
      ),
      title: password.username == null ? null : Text(password.username!),
      subtitle: Text(password.provider.name),
      onTap: () => onEdit?.call(password.id),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => onDelete?.call(password.id),
      ),
    );
  }
}

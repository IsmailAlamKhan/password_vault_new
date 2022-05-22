import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/extensions.dart';
import '../../../shared/logger.dart';
import '../../../shared/models/password_codegen.dart';
import '../../../shared/providers.dart';
import '../../../shared/widgets/widgets.dart';
import '../password_form_controller.dart';
import '../password_form_state_codegen.dart';

class PasswordForm extends HookConsumerWidget {
  const PasswordForm({super.key, this.initialId, this.isFullScreen = false});
  static const path = '/password-form';
  static GoRoute get route => GoRoute(
        path: '$path/:id',
        builder: (context, state) => PasswordForm(
          isFullScreen: true,
          initialId: int.tryParse(state.params['id'].toString()),
        ),
      );

  final int? initialId;
  final bool isFullScreen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(passwordFormControllerProvider);
    final controller = ref.watch(passwordFormControllerProvider.notifier);
    final initialState = useRef<AsyncValue<PasswordData?>>(const AsyncValue.loading());
    final initialId = this.initialId;
    if (initialId == null) {
      initialState.value = const AsyncValue.data(null);
    } else {
      initialState.value = ref.watch(passwordByIdProvider(initialId));
    }
    useEffect(() {
      if (initialId != null) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          initialState.value.whenOrNull(data: controller.init);
        });
      }
      controller.isFullscreen = isFullScreen;
    }, [initialState.value]);
    final providerImage = state.provider?.imagePath;
    return LoaderOverlay(
      show: state.submitState == SubmitState.submitting,
      child: Scaffold(
        body: initialState.value.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) {
            logError('Password Form', error: error, stackTrace: stackTrace);
            return const Text("Couldn't get password");
          },
          data: (_) {
            return CustomScrollView(
              slivers: [
                _Header(isFullScreen: isFullScreen, providerImage: providerImage),
                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        AppTextFormField(
                          formzInput: state.password,
                          type: TextFieldType.password,
                          onChanged: controller.updatePassword,
                        ),
                        const SizedBox(height: 16),
                        AppTextFormField(
                          formzInput: state.username,
                          onChanged: controller.updateUsername,
                        ),
                        const SizedBox(height: 16),
                        _ProviderDropdown(
                          onChanged: controller.updateProvider,
                          selected: state.provider,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FilledButton(
                        onPressed: state.haveChanged ? controller.submit : null,
                        child: const Text('Submit'),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Header extends HookConsumerWidget {
  const _Header({
    super.key,
    required this.isFullScreen,
    required this.providerImage,
  });

  final bool isFullScreen;
  final String? providerImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerImage = this.providerImage;
    Color color = Colors.blue;
    if (providerImage != null) {
      ref
          .watch(colorFromNetworkImageProvider(providerImage))
          .whenData((value) => color = value.dominantColor?.color ?? Colors.blue);
    }
    final foregroundColor = useState<Color?>(null);
    final brightness = useState<Brightness?>(null);

    useEffect(() {
      color.brightnessBasedOnBackground().then((value) {
        brightness.value = value;
        foregroundColor.value = value.contrastColor();
      });
    }, [color]);

    final theme = Theme.of(context);
    return AnimatedTheme(
      data: theme.copyWith(
        appBarTheme: theme.appBarTheme.copyWith(
          backgroundColor: color,
          foregroundColor: foregroundColor.value,
        ),
        // brightness: brightness.value,
        colorScheme: theme.colorScheme.copyWith(
          primary: color,
          onPrimary: foregroundColor.value,
          brightness: brightness.value,
        ),
      ),
      child: SliverAppBar(
        automaticallyImplyLeading: isFullScreen,
        expandedHeight: 200,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          background: providerImage != null
              ? Center(
                  child: Card(
                    shape: const CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.network(providerImage, height: 50, width: 50),
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}

class _ProviderDropdown extends ConsumerWidget {
  const _ProviderDropdown({
    super.key,
    required this.onChanged,
    required this.selected,
  });
  final ValueChanged<PasswordProvider?> onChanged;
  final PasswordProvider? selected;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providers = ref.watch(passwordProvidersProvider);
    return providers.when(
      data: (providers) {
        return DropdownButtonFormField<PasswordProvider>(
          isExpanded: true,
          value: selected,
          onChanged: onChanged,
          decoration: InputDecoration(
            label: Text.rich(
              TextSpan(
                text: 'Provider',
                children: [
                  TextSpan(
                    text: ' *',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          items: providers.map((provider) {
            return DropdownMenuItem<PasswordProvider>(
              value: provider,
              child: Text(provider.name),
            );
          }).toList(),
        );
      },
      error: (error, stackTrace) {
        logError('Password providers', error: error, stackTrace: stackTrace);
        return const Text('Couldn\'t get providers');
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/controllers/current_user.dart';
import '../../shared/event_bus.dart';
import '../../shared/events/events.dart';
import '../../shared/exceptions.dart';
import '../../shared/formz/formz.dart';
import '../../shared/logger.dart';
import '../../shared/models/password_codegen.dart';
import '../../shared/navigator.dart';
import '../../shared/services/services.dart';
import 'password_form_state_codegen.dart';

final passwordFormControllerProvider =
    StateNotifierProvider.autoDispose<PasswordFormController, PasswordFormState>(
        PasswordFormController.new);

class PasswordFormController extends StateNotifier<PasswordFormState> with NavigatorController {
  final PasswordService _passwordService;
  @override
  final EventBus eventBus;
  PasswordFormController(Ref ref)
      : _passwordService = ref.read(passwordServiceProvider),
        eventBus = ref.read(eventBusProvider),
        super(PasswordFormState(userId: ref.watch(currentUserProvider)!.id));

  PasswordData? initialState;

  bool _isFullscreen = false;

  set isFullscreen(bool value) {
    _isFullscreen = value;
  }

  void init([PasswordData? state]) {
    if (state != null) {
      this.state = state.toFormState();
      initialState = state;
    }
  }

  void updatePassword(Password password) {
    state = state.copyWith(password: password, haveChanged: true);
  }

  void updateUsername(Username username) {
    state = state.copyWith(username: username, haveChanged: true);
  }

  void updateProvider(PasswordProvider? provider) {
    state = state.copyWith(provider: provider, haveChanged: true);
  }

  void reset() {
    state = state.copyWith(
      password: const Password.pure(),
      username: const Username.pureNonRequired(),
      provider: null,
      haveChanged: false,
    );
  }

  Future<void> submit() async {
    if (state.canSubmit || state.provider == null) {
      try {
        state = state.copyWith(submitState: SubmitState.submitting);
        final id = await _passwordService.create(state);
        if (_isFullscreen) {
          pop();
        }
        eventBus.emit(PasswordAddUpdateEvent(id));
        state = state.copyWith(submitState: SubmitState.submitted);
      } on AppException catch (e, s) {
        logError('Error creating password', error: e, stackTrace: s);
        showSnackbar(e.message);
        state = state.copyWith(submitState: SubmitState.failed);
      }
    } else {
      showSnackbar('Please fill in all the required fields');
    }
  }
}

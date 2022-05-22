import '../event_bus.dart';
import '../models/user_codegen.dart';

class LoggedInEvent with Event {
  final AppUser user;

  LoggedInEvent(this.user);
}

class LogoutEvent with Event {
  LogoutEvent();
}

class PasswordAddUpdateEvent with Event {
  final int id;

  PasswordAddUpdateEvent(this.id);
}

class PasswordDeleteEvent with Event {
  final int id;

  PasswordDeleteEvent(this.id);
}

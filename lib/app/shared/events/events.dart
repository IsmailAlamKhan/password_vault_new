import '../event_bus.dart';
import '../models/user_codegen.dart';

class LoggedInEvent with Event {
  final AppUser user;

  LoggedInEvent(this.user);
}

class LogoutEvent with Event {
  LogoutEvent();
}

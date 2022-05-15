import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'logger.dart';

final eventBusProvider = Provider<EventBus>((_) => EventBus());

mixin Event {}

class EventBus {
  EventBus() {
    _init();
  }
  final _logger = AppLogger('Event bus');
  final _eventBus = StreamController<Event>.broadcast();

  void emit(Event event) => _eventBus.add(event);

  StreamSubscription<Event> on<T extends Event>(
    void Function(T) onData, {
    Function? onError,
    void Function()? onDone,
  }) =>
      _eventBus.stream.listen(
        (event) {
          if (event is T) {
            onData(event);
          }
        },
        onError: onError,
        onDone: onDone,
      );

  void _init() {
    _eventBus.stream.listen((event) {
      _logger.info('Event arrived: $event');
    });
  }
}

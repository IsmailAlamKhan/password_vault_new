import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import 'extensions.dart';

final flutoreWhaliLogger = AppLogger.root();

void logError(Object? messege, {Object? error, StackTrace? stackTrace}) {
  flutoreWhaliLogger.error(messege, error: error, stackTrace: stackTrace);
}

void logWarning(Object? messege, {Object? warning, StackTrace? stackTrace}) {
  flutoreWhaliLogger.warning(messege, warning: warning, stackTrace: stackTrace);
}

void logInfo(Object? messege) => flutoreWhaliLogger.info(messege);

class AppLogger {
  factory AppLogger.root() => _root;
  static final _root = AppLogger('FlutoreWhali Logger');

  AppLogger(this.name) : logger = Logger(name);

  final String name;
  final Logger logger;

  void error(Object? message, {Object? error, StackTrace? stackTrace}) =>
      logger.shout(message, error, stackTrace);

  void warning(Object? message, {Object? warning, StackTrace? stackTrace}) =>
      logger.warning(message, warning, stackTrace);

  void info(Object? message) => logger.info(message);
  static void init([bool? showWhen]) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((data) => _printLog(data, showWhen ?? kDebugMode));
  }

  static void _printLog(LogRecord record, bool showWhen) {
    if (showWhen) {
      final level = record.level;
      final recordMessege = record.message;
      final error = record.error;
      final stack = record.stackTrace;
      final name = record.loggerName;

      final isError = level.value.between(1000, 1300);
      final isWarning = level.value == 900;
      final isNormal = level.value.between(0, 900);

      final output =
          "[$name] $recordMessege${error != null ? '\n$error' : ''}${stack != null ? '\n$stack' : ''}";
      var messege = "";
      if (isError) {
        messege = '🛑 \x1B[31m$output\x1B[0m ';
      }
      if (isWarning) {
        messege = '⚠️ \x1B[33m$output\x1B[0m ⚠️';
      }
      if (isNormal) {
        messege = '\x1B[34m ℹ️ $output ℹ️ \x1B[0m';
      }

      debugPrint(messege);
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';
import 'package:intl/intl.dart' show DateFormat;

/// Abstract logger class to showcase creation of a Singleton
/// wrapper as an extension
///
abstract class BaseLogger {
  @protected
  late Logger _logger;
  @protected
  DateFormat dateFormatter = DateFormat('H:m:s.S');
  static const appName = 'RoadKingUser';

  void log(message, [Object? error, StackTrace? stackTrace]) =>
      _logger.info(message, error, stackTrace);
}

class DebugLogger extends BaseLogger {
  static DebugLogger? _instance;

  ///
  /// private constructor
  DebugLogger._internal() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen(_recordHandler);
    _logger = Logger(BaseLogger.appName);
    debugPrint('<DebugLogger> creation');
    _instance = this;
  }

  /// public fatory constructor
  /// lazy instantation
  factory DebugLogger() => _instance ?? DebugLogger._internal();

  /// record handler for the logging message content
  /// it is added in the private constructor
  void _recordHandler(LogRecord rec) {
    debugPrint(
        '<DebugLogger> creation ${dateFormatter.format(rec.time)}: ${rec.message}, ${rec.error} \n\n');
  }
}

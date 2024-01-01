import 'package:logger/logger.dart';

class SLoggerhelper{
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String msg){

    _logger.d(msg);
  }

  static void info(String msg){

    _logger.i(msg);
  }

  static void warning(String msg){

    _logger.w(msg);
  }

  static void error(String msg, [dynamic error]){

    _logger.e(msg, error: error, stackTrace: StackTrace.current);
  }

}
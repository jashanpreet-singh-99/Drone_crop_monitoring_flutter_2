class Config {}

class Log {
  static const bool DEBUG = true;

  static const String E = "Error";
  static const String I = "Info ";

  static const String TAG_SPLASH = "Activity_Splash_Screen";
  static const String TAG_HOME = "Activity_Home_Screen";
  static const String TAG_MON = "Activity_Monitor_Screen";

  static void log(String tag, String message, String type) {
    if (DEBUG) {
      // ignore: avoid_print
      print("$tag : $type : $message");
    }
  }
}

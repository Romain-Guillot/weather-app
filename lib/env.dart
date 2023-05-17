class Env {
  Env._();

  static void initializeWith({
    required bool sentryEnabled,
    required String sentryURL,
    required bool mocking,
    required String openMeteoBaseURL,
  }) {
    Env.mocking = mocking;
    Env.sentryEnabled = sentryEnabled;
    Env.sentryURL = sentryURL;
    Env.openMeteoBaseURL = openMeteoBaseURL;
  }

  static late final bool mocking;
  static late final bool sentryEnabled;
  static late final String sentryURL;
  static late final String openMeteoBaseURL;
}

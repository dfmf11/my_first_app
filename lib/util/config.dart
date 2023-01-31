class Config {
  static const baseUrl = String.fromEnvironment(
    'baseUrl',
    defaultValue: 'https://rais-pocket-base-api.fly.dev/',
  );

  static const skipLogin = true;
}

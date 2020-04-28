class RegexValidation {
  /// Returns whether the pattern has a match in the string [input].
  static bool hasMatch(String s, Pattern p) =>
      (s == null) ? false : RegExp(p).hasMatch(s);
}

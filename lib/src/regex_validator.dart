/// Regex Validator
class RegVal {
  /// Returns whether the pattern has a match in the string [input].
  static bool hasMatch(String str, String pattern) =>
      RegExp(pattern).hasMatch(str);
}

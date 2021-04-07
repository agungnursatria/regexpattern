/// Regex Validator
class RegVal {
  /// Returns whether the pattern has a match in the string [input].
  static bool hasMatch(String? s, Pattern p) =>
      // avoid_bool_literals_in_conditional_expressions error
      (s != null) && RegExp(p.toString()).hasMatch(s);
}

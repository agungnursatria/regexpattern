class RegexValidation {
  static bool hasMatch(String s, Pattern p) =>
      (s == null) ? false : RegExp(p).hasMatch(s);
}

import 'package:regexpattern/regexpattern.dart';

extension StringExtensions on String {
  /// Username regex
  /// Requires minimum 3 character
  /// Allowing "_" and "." in middle of name
  bool isUsername() => RegVal.hasMatch(this, RegexPattern.username);

  /// Email regex
  bool isEmail() => RegVal.hasMatch(this, RegexPattern.email);

  /// URL regex
  /// Eg:
  /// - https://medium.com/@diegoveloper/flutter-widget-size-and-position-b0a9ffed9407
  /// - https://www.youtube.com/watch?v=COYFmbVEH0k
  /// - https://stackoverflow.com/questions/53913192/flutter-change-the-width-of-an-alertdialog/57688555
  bool isUrl() => RegVal.hasMatch(this, RegexPattern.url);

  /// Phone Number regex
  /// Must started by either, "0", "+", "+XX <X between 2 to 4 digit>", "(+XX <X between 2 to 3 digit>)"
  /// Can add whitespace separating digit with "+" or "(+XX)"
  /// Example: 05555555555, +555 5555555555, (+123) 5555555555, (555) 5555555555, +5555 5555555555
  bool isPhone() => RegVal.hasMatch(this, RegexPattern.phone);

  /// Hexadecimal regex
  bool isHex() => RegVal.hasMatch(this, RegexPattern.hexadecimal);

  /// Image vector regex
  bool isVector() => RegVal.hasMatch(this, RegexPattern.vector);

  /// Image regex
  bool isImage() => RegVal.hasMatch(this, RegexPattern.image);

  /// Audio regex
  bool isAudio() => RegVal.hasMatch(this, RegexPattern.audio);

  /// Video regex
  bool isVideo() => RegVal.hasMatch(this, RegexPattern.video);

  /// Txt regex
  bool isTxt() => RegVal.hasMatch(this, RegexPattern.txt);

  /// Document regex
  bool isDoc() => RegVal.hasMatch(this, RegexPattern.doc);

  /// Excel regex
  bool isExcel() => RegVal.hasMatch(this, RegexPattern.excel);

  /// PPT regex
  bool isPPT() => RegVal.hasMatch(this, RegexPattern.ppt);

  /// Document regex
  bool isApk() => RegVal.hasMatch(this, RegexPattern.apk);

  /// PDF regex
  bool isPdf() => RegVal.hasMatch(this, RegexPattern.pdf);

  /// HTML regex
  bool isHtml() => RegVal.hasMatch(this, RegexPattern.html);

  /// DateTime regex (UTC)
  /// Unformatted date time (UTC and Iso8601)
  /// Example: 2020-04-27 08:14:39.977, 2020-04-27T08:14:39.977, 2020-04-27 01:14:39.977Z
  bool isDateTimeUTC() => RegVal.hasMatch(this, RegexPattern.basicDateTime);

  /// Binary regex
  /// Consist only 0 & 1
  bool isBinary() => RegVal.hasMatch(this, RegexPattern.binary);

  /// MD5 regex
  bool isMD5() => RegVal.hasMatch(this, RegexPattern.md5);

  /// SHA1 regex
  bool isSHA1() => RegVal.hasMatch(this, RegexPattern.sha1);

  /// SHA256 regex
  bool isSHA256() => RegVal.hasMatch(this, RegexPattern.sha256);

  /// SSN (Social Security Number) regex
  bool isSSN() => RegVal.hasMatch(this, RegexPattern.ssn);

  /// IPv4 regex
  bool isIPV4() => RegVal.hasMatch(this, RegexPattern.ipv4);

  /// IPv6 regex
  bool isIPV6() => RegVal.hasMatch(this, RegexPattern.ipv6);

  /// ISBN 10 & 13 regex
  bool isISBN() => RegVal.hasMatch(this, RegexPattern.isbn);

  /// Github repository regex
  bool isGithub() => RegVal.hasMatch(this, RegexPattern.github);

  /// Passport No. regex
  bool isPassport() => RegVal.hasMatch(this, RegexPattern.passport);

  /// Currency regex
  bool isCurrency() => RegVal.hasMatch(this, RegexPattern.currency);

  /// Numeric Only regex (No Whitespace & Symbols)
  bool isNumeric() => RegVal.hasMatch(this, RegexPattern.numericOnly);

  /// Alphabet Only regex (No Whitespace & Symbols)
  bool isAlphabet() => RegVal.hasMatch(this, RegexPattern.alphabetOnly);

  /// Password (Easy) Regex
  /// Allowing all character except 'whitespace'
  /// Minimum character: 8
  bool isPasswordEasy() => RegVal.hasMatch(this, RegexPattern.passwordEasy);

  /// Password (Easy) Regex
  /// Allowing all character
  /// Minimum character: 8
  bool isPasswordEasyWithspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordEasyAllowedWhitespace);

  /// Password (Normal) Regex
  /// Allowing all character except 'whitespace'
  /// Must contains at least: 1 letter & 1 number
  /// Minimum character: 8
  bool isPasswordNormal1() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal1);

  /// Password (Normal) Regex
  /// Allowing all character
  /// Must contains at least: 1 letter & 1 number
  /// Minimum character: 8
  bool isPasswordNormal1Withspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal1AllowedWhitespace);

  /// Password (Normal) Regex
  /// Allowing LETTER and NUMBER only
  /// Must contains at least: 1 letter & 1 number
  /// Minimum character: 8
  bool isPasswordNormal2() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal2);

  /// Password (Normal) Regex
  /// Allowing LETTER and NUMBER only
  /// Must contains: 1 letter & 1 number
  /// Minimum character: 8
  bool isPasswordNormal2Withspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal2AllowedWhitespace);

  /// Password (Normal) Regex
  /// Allowing all character except 'whitespace'
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum character: 8
  bool isPasswordNormal3() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal3);

  /// Password (Normal) Regex
  /// Allowing all character
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum character: 8
  bool isPasswordNormal3Withspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal3AllowedWhitespace);

  /// Password (Hard) Regex
  /// Allowing all character except 'whitespace'
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum character: 8
  bool isPasswordHard() => RegVal.hasMatch(this, RegexPattern.passwordHard);

  /// Password (Hard) Regex
  /// Allowing all character
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum character: 8
  bool isPasswordHardWithspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordHardAllowedWhitespace);
}

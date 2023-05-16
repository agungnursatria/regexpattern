import 'package:regexpattern/regexpattern.dart';

extension StringExtensions on String {
  /// Username regex
  ///
  /// Requires minimum 3 character
  /// Allowing "_" and "." in middle of name
  bool isUsername() => RegVal.hasMatch(this, RegexPattern.username);

  /// Email regex
  bool isEmail() => RegVal.hasMatch(this, RegexPattern.email);

  /// URL regex
  ///
  /// Examples:
  /// - https://medium.com/@diegoveloper/flutter-widget-size-and-position-b0a9ffed9407
  /// - https://www.youtube.com/watch?v=COYFmbVEH0k
  /// - https://stackoverflow.com/questions/53913192/flutter-change-the-width-of-an-alertdialog/57688555
  bool isUrl() => RegVal.hasMatch(this, RegexPattern.url);

  /// Phone Number regex
  ///
  /// Must be started either with "0", "+", "+XX <X between 2 to 4 digit>", or "(+XX <X between 2 to 3 digit>)"
  /// It is possible to add whitespace separating digit with "+" or "(+XX)"
  ///
  /// Examples:
  /// - 05555555555
  /// - +555 5555555555
  /// - (+123) 5555555555
  /// - (555) 5555555555
  /// - +5555 5555555555
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
  ///
  /// Valid Formats:
  /// - YYYY-MM-DDTHH:mm:ss.ffffffZ
  /// - YYYY-MM-DDTHH:mm:ss.ffffff
  /// - YYYY-MM-DD HH:mm:ss.ffffffZ
  /// - YYYY-MM-DD HH:mm:ss.ffffff
  /// - YYYY-MM-DDTHH:mm:ss.fffZ
  /// - YYYY-MM-DDTHH:mm:ss.fff
  /// - YYYY-MM-DD HH:mm:ss.fffZ
  /// - YYYY-MM-DD HH:mm:ss.fff
  ///
  /// Examples:
  /// - 2020-04-27 08:14:39.977
  /// - 2020-04-27T08:14:39.977
  /// - 2020-04-27 01:14:39.977Z
  /// - 2020-04-27 08:14:39
  /// - 2020-04-27T08:14:39
  /// - 2020-04-27 01:14:39Z
  bool isDateTimeUTC() => RegVal.hasMatch(this, RegexPattern.dateTimeUTC);

  /// Date Time regex
  /// Return [true] to utc & common formatted date time.
  ///
  /// Valid Formats:
  /// - All DateTime regex (UTC) valid examples
  /// - many combination of `YYYY-MM-DD HH:mm:ss`
  /// - HH:mm AM (or PM)
  /// - MMMM yyyy
  /// - MMM, d yyyy
  /// - etc.
  ///
  /// Examples:
  /// - 2018-01-04T05:52:34
  /// - 2018-01-04
  /// - 2018-01-04 05:52
  /// - 01/Oct/04 01:23
  /// - May 16, 2023
  /// - 07:00 PM
  /// - Wednesday, 21 May 2023
  /// - 01/25
  /// - 00:30:20
  /// - Wed, Jan 26
  /// - etc.
  bool isDateTime() => RegVal.hasMatch(this, RegexPattern.dateTime);

  /// Binary regex
  /// Consist only 0 & 1
  bool isBinary() => RegVal.hasMatch(this, RegexPattern.binary);

  /// MD5 regex
  bool isMD5() => RegVal.hasMatch(this, RegexPattern.md5);

  /// CVV regex
  bool isCVV() => RegVal.hasMatch(this, RegexPattern.cvv);

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

  /// Numeric Only regex
  bool isNumeric() => RegVal.hasMatch(this, RegexPattern.numericOnly);

  /// Alphabet Only regex
  bool isAlphabet() => RegVal.hasMatch(this, RegexPattern.alphabetOnly);

  /// Alphabet & Numeric Only regex
  bool isAlphabetNumeric() =>
      RegVal.hasMatch(this, RegexPattern.alphaNumericOnly);

  /// Alphabet, Numeric, Symbol Only regex
  bool isAlphabetNumericSymbol() =>
      RegVal.hasMatch(this, RegexPattern.alphaNumericSymbolOnly);

  /// Password (Easy) Regex
  ///
  /// No whitespace allowed
  /// Minimum characters: 8
  bool isPasswordEasy() => RegVal.hasMatch(this, RegexPattern.passwordEasy);

  /// Password (Easy) Regex
  ///
  /// Minimum characters: 8
  bool isPasswordEasyWithspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordEasyAllowedWhitespace);

  /// Password (Normal) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal1() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal1);

  /// Password (Normal) Regex
  ///
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal1Withspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal1AllowedWhitespace);

  /// Password (Normal) Regex
  ///
  /// No symbolic characters allowed
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal2() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal2);

  /// Password (Normal) Regex
  ///
  /// No symbolic characters allowed
  /// Must contains: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal2Withspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal2AllowedWhitespace);

  /// Password (Normal) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal3() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal3);

  /// Password (Normal) Regex
  ///
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal3Withspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordNormal3AllowedWhitespace);

  /// Password (Hard) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum characters: 8
  bool isPasswordHard() => RegVal.hasMatch(this, RegexPattern.passwordHard);

  /// Password (Hard) Regex
  ///
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum characters: 8
  bool isPasswordHardWithspace() =>
      RegVal.hasMatch(this, RegexPattern.passwordHardAllowedWhitespace);
}

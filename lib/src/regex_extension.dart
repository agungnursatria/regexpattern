import 'package:regexpattern/regexpattern.dart';

extension StringExtensions on String {
  /// Username regex
  ///
  /// Minimum 3 characters
  /// Allowing "_" and "." in middle of name
  bool isUsername() => RegVal.hasMatch(
        this,
        RegexPattern.username,
      );

  /// Username regex (v2)
  ///
  /// May start with @
  /// Minimum 3 characterss
  /// Allowed to use aplhanumeric, underscore ("_"), dash ("-"), and dot (".") characters.
  /// Has only one symbols in a row.
  /// Symbols can only be used in the middle of name.
  bool isUsernameV2() => RegVal.hasMatch(
        this,
        RegexPattern.usernameV2,
      );

  /// Username (Google) regex
  ///
  /// Minimum 6 characters, maximum 30 characters
  /// Contain letters (a-z), numbers (0-9), and periods (.).
  /// Must start and end with with letters or numbers.
  /// Can't have consecutive period (.).
  bool isUsernameGoogle() => RegVal.hasMatch(
        this,
        RegexPattern.usernameGoogle,
      );

  /// Username (Instagram) regex
  ///
  /// May start with @
  /// Minimum 3 characters, maximum 30 characters
  /// Allow aplhanumeric, "_" and "." characters
  /// Must not start or end with "."
  bool isUsernameInstagram() => RegVal.hasMatch(
        this,
        RegexPattern.usernameInstagram,
      );

  /// Username (Discord) regex
  ///
  /// Reference: https://discord.com/developers/docs/resources/user#usernames-and-nicknames
  bool isUsernameDiscord() => RegVal.hasMatch(
        this,
        RegexPattern.usernameDiscord,
      );

  /// Email regex
  ///
  /// References: [RFC2822 Email Validation](https://regexr.com/2rhq7) by Tripleaxis
  bool isEmail() => RegVal.hasMatch(
        this,
        RegexPattern.email,
      );

  /// URL regex
  ///
  /// Examples:
  /// - https://medium.com/@diegoveloper/flutter-widget-size-and-position-b0a9ffed9407
  /// - https://www.youtube.com/watch?v=COYFmbVEH0k
  /// - https://stackoverflow.com/questions/53913192/flutter-change-the-width-of-an-alertdialog/57688555
  /// - http://192.168.0.1:8080
  /// - https://john.doe@www.example.com:123/forum/questions/?tag=networking&order=newest#top
  /// - http://a/b/c/d;p?q
  /// - www.youtube.com
  /// - stackoverflow.com
  /// - twitter://
  /// - fb://profile/33138223345
  /// - mailto:John.Doe@example.com
  /// - ldap://[2001:db8::7]/c=GB?objectClass?one
  /// - tel:+1-816-555-1212
  /// - telnet://192.0.2.16:80/
  /// - news:comp.infosystems.www.servers.unix
  /// - urn:oasis:names:specification:docbook:dtd:xml:4.1.2
  ///
  /// Reference:
  /// https://datatracker.ietf.org/doc/html/rfc3986
  /// https://en.wikipedia.org/wiki/Uniform_Resource_Identifier
  bool isUrl() => RegVal.hasMatch(
        this,
        RegexPattern.url,
      );

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
  bool isPhone() => RegVal.hasMatch(
        this,
        RegexPattern.phone,
      );

  /// Hexadecimal regex
  bool isHex() => RegVal.hasMatch(
        this,
        RegexPattern.hexadecimal,
      );

  /// Image vector regex
  bool isVector() => RegVal.hasMatch(
        this,
        RegexPattern.vector,
      );

  /// Image regex
  bool isImage() => RegVal.hasMatch(
        this,
        RegexPattern.image,
      );

  /// Audio regex
  bool isAudio() => RegVal.hasMatch(
        this,
        RegexPattern.audio,
      );

  /// Video regex
  bool isVideo() => RegVal.hasMatch(
        this,
        RegexPattern.video,
      );

  /// Txt regex
  bool isTxt() => RegVal.hasMatch(
        this,
        RegexPattern.txt,
      );

  /// Document regex
  bool isDoc() => RegVal.hasMatch(
        this,
        RegexPattern.doc,
      );

  /// Excel regex
  bool isExcel() => RegVal.hasMatch(
        this,
        RegexPattern.excel,
      );

  /// PPT regex
  bool isPPT() => RegVal.hasMatch(
        this,
        RegexPattern.ppt,
      );

  /// APK regex
  bool isApk() => RegVal.hasMatch(
        this,
        RegexPattern.apk,
      );

  /// IPA regex
  bool isIpa() => RegVal.hasMatch(
        this,
        RegexPattern.ipa,
      );

  /// PDF regex
  bool isPdf() => RegVal.hasMatch(
        this,
        RegexPattern.pdf,
      );

  /// HTML regex
  bool isHtml() => RegVal.hasMatch(
        this,
        RegexPattern.html,
      );

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
  bool isDateTimeUTC() => RegVal.hasMatch(
        this,
        RegexPattern.dateTimeUTC,
      );

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
  bool isDateTime() => RegVal.hasMatch(
        this,
        RegexPattern.dateTime,
      );

  /// Binary regex
  /// Consist only 0 & 1
  bool isBinary() => RegVal.hasMatch(
        this,
        RegexPattern.binary,
      );

  /// MD5 regex
  bool isMD5() => RegVal.hasMatch(
        this,
        RegexPattern.md5,
      );

  /// CVV regex
  bool isCVV() => RegVal.hasMatch(
        this,
        RegexPattern.cvv,
      );

  /// SHA1 regex
  bool isSHA1() => RegVal.hasMatch(
        this,
        RegexPattern.sha1,
      );

  /// SHA256 regex
  bool isSHA256() => RegVal.hasMatch(
        this,
        RegexPattern.sha256,
      );

  /// SSN (Social Security Number) regex
  bool isSSN() => RegVal.hasMatch(
        this,
        RegexPattern.ssn,
      );

  /// IPv4 regex
  bool isIPV4() => RegVal.hasMatch(
        this,
        RegexPattern.ipv4,
      );

  /// IPv6 regex
  bool isIPV6() => RegVal.hasMatch(
        this,
        RegexPattern.ipv6,
      );

  /// ISBN 10 & 13 regex
  bool isISBN() => RegVal.hasMatch(
        this,
        RegexPattern.isbn,
      );

  /// Github repository regex
  bool isGithub() => RegVal.hasMatch(
        this,
        RegexPattern.github,
      );

  /// Passport No. regex
  bool isPassport() => RegVal.hasMatch(
        this,
        RegexPattern.passport,
      );

  /// Currency regex
  bool isCurrency() => RegVal.hasMatch(
        this,
        RegexPattern.currency,
      );

  /// Numeric Only regex
  bool isNumeric() => RegVal.hasMatch(
        this,
        RegexPattern.numericOnly,
      );

  /// Alphabet Only regex
  bool isAlphabet() => RegVal.hasMatch(
        this,
        RegexPattern.alphabetOnly,
      );

  /// Alphabet & Numeric Only regex
  bool isAlphabetNumeric() => RegVal.hasMatch(
        this,
        RegexPattern.alphaNumericOnly,
      );

  /// Alphabet, Numeric, Symbol Only regex
  bool isAlphabetNumericSymbol() => RegVal.hasMatch(
        this,
        RegexPattern.alphaNumericSymbolOnly,
      );

  /// Password (Easy) Regex
  ///
  /// No whitespace allowed
  /// Minimum characters: 8
  bool isPasswordEasy() => RegVal.hasMatch(
        this,
        RegexPattern.passwordEasy,
      );

  /// Password (Easy) Regex
  ///
  /// Minimum characters: 8
  bool isPasswordEasyWithspace() => RegVal.hasMatch(
        this,
        RegexPattern.passwordEasyWhitespace,
      );

  /// Password (Normal) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal1() => RegVal.hasMatch(
        this,
        RegexPattern.passwordNormal1,
      );

  /// Password (Normal) Regex
  ///
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal1Withspace() => RegVal.hasMatch(
        this,
        RegexPattern.passwordNormal1Whitespace,
      );

  /// Password (Normal) Regex
  ///
  /// No symbolic characters allowed
  /// Must contains at least: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal2() => RegVal.hasMatch(
        this,
        RegexPattern.passwordNormal2,
      );

  /// Password (Normal) Regex
  ///
  /// No symbolic characters allowed
  /// Must contains: 1 letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal2Withspace() => RegVal.hasMatch(
        this,
        RegexPattern.passwordNormal2Whitespace,
      );

  /// Password (Normal) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal3() => RegVal.hasMatch(
        this,
        RegexPattern.passwordNormal3,
      );

  /// Password (Normal) Regex
  ///
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter & 1 number
  /// Minimum characters: 8
  bool isPasswordNormal3Withspace() => RegVal.hasMatch(
        this,
        RegexPattern.passwordNormal3Whitespace,
      );

  /// Password (Hard) Regex
  ///
  /// No whitespace allowed
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum characters: 8
  bool isPasswordHard() => RegVal.hasMatch(
        this,
        RegexPattern.passwordHard,
      );

  /// Password (Hard) Regex
  ///
  /// Must contains at least: 1 uppercase letter, 1 lowecase letter, 1 number, & 1 special character (symbol)
  /// Minimum characters: 8
  bool isPasswordHardWithspace() => RegVal.hasMatch(
        this,
        RegexPattern.passwordHardWhitespace,
      );

  /// UUID
  ///
  /// Reference: https://ihateregex.io/expr/uuid/
  bool isUUID() => RegVal.hasMatch(
        this,
        RegexPattern.uuid,
      );

  /// Bitcoin Address
  ///
  /// Consist of 26-35 (42 on bc1) alphanumeric characters.
  /// Starts with 1, 3, or bc1.
  /// It contains digits in the range of 0 to 9.
  /// The uppercase letter O and the uppercase letter I are not used to avoid visual ambiguity.
  ///
  /// References:
  /// https://bitcoin.design/guide/glossary/address/
  /// https://ihateregex.io/expr/bitcoin-address/
  /// https://www.geeksforgeeks.org/regular-expression-to-validate-a-bitcoin-address/
  /// https://en.bitcoin.it/wiki/Invoice_address
  bool isBitcoinAddress() => RegVal.hasMatch(
        this,
        RegexPattern.bitcoinAddress,
      );

  /// Bitcoin (Taproot) Address
  ///
  /// Pay-to-Taproot (P2TR)
  /// Invoice address format: Bech32m
  /// 62 aplhanumeric characters, case insensitive
  /// Starts with bc1p.
  ///
  /// References:
  /// https://bitcoin.design/guide/glossary/address/
  /// https://blog.trezor.io/bitcoin-addresses-and-how-to-use-them-35e7312098ff
  bool isBitcoinTaprootAddress() => RegVal.hasMatch(
        this,
        RegexPattern.bitcoinTaprootAddress,
      );

  /// Bitcoin (Segwit) Address
  ///
  /// Pay-to-Witness-Public-Key-hash (P2WPKH)
  /// Invoice address format: Bech32m
  /// 42 aplhanumeric characters, case insensitive
  /// Starts with bc1q.
  ///
  /// References:
  /// https://bitcoin.design/guide/glossary/address/
  /// https://blog.trezor.io/bitcoin-addresses-and-how-to-use-them-35e7312098ff
  bool isBitcoinSegwitAddress() => RegVal.hasMatch(
        this,
        RegexPattern.bitcoinSegwitAddress,
      );

  /// Ethereum Address
  ///
  /// Reference: https://www.regextester.com/99711
  bool isEthereumAddress() => RegVal.hasMatch(
        this,
        RegexPattern.ethereumAddress,
      );
}

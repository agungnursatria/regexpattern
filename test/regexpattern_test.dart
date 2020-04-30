import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test('Positive case: Hexadecimal (3 character)', () {
      String s = '#12F';
      expect(RegexValidation.hasMatch(s, RegexPattern.hexadecimal), true);
    });
    test('Positive case: Hexadecimal (6 character)', () {
      String s = '#12FF52';
      expect(RegexValidation.hasMatch(s, RegexPattern.hexadecimal), true);
    });
    test('Positive case: Email', () {
      String s = 'yourn1823.ame@gmail123.com';
      expect(RegexValidation.hasMatch(s, RegexPattern.email), true);
    });
    test('Positive case: URL', () {
      String s = 'https://google.com';
      expect(RegexValidation.hasMatch(s, RegexPattern.url), true);
    });
    test('Positive case: Phone', () {
      String s = '(+12) 123123123';
      expect(RegexValidation.hasMatch(s, RegexPattern.phone), true);
    });
    test('Positive case: Image', () {
      String s = 'test.jpg';
      expect(RegexValidation.hasMatch(s, RegexPattern.image), true);
    });
    test('Positive case: Audio', () {
      String s = 'test.mp3';
      expect(RegexValidation.hasMatch(s, RegexPattern.audio), true);
    });
    test('Positive case: Video', () {
      String s = 'test.mp4';
      expect(RegexValidation.hasMatch(s, RegexPattern.video), true);
    });
    test('Positive case: Txt', () {
      String s = 'test.txt';
      expect(RegexValidation.hasMatch(s, RegexPattern.txt), true);
    });
    test('Positive case: Document Ms.Word', () {
      String s = 'test.docx';
      expect(RegexValidation.hasMatch(s, RegexPattern.doc), true);
    });
    test('Positive case: Excel', () {
      String s = 'test.xlsx';
      expect(RegexValidation.hasMatch(s, RegexPattern.excel), true);
    });
    test('Positive case: Powerpoint', () {
      String s = 'test.pptx';
      expect(RegexValidation.hasMatch(s, RegexPattern.ppt), true);
    });
    test('Positive case: APK', () {
      String s = 'test.apk';
      expect(RegexValidation.hasMatch(s, RegexPattern.apk), true);
    });
    test('Positive case: PDF', () {
      String s = 'test.pdf';
      expect(RegexValidation.hasMatch(s, RegexPattern.pdf), true);
    });
    test('Positive case: HTML', () {
      String s = 'test.html';
      expect(RegexValidation.hasMatch(s, RegexPattern.html), true);
    });
    test('Positive case: Username', () {
      String s = 'noobmaster69';
      expect(RegexValidation.hasMatch(s, RegexPattern.username), true);
    });
    test('Positive case: Date (UTC and iso8601)', () {
      String s = '2020-04-27T08:14:39.977';
      expect(RegexValidation.hasMatch(s, RegexPattern.basicDateTime), true);
    });
    test('Positive case: binary', () {
      String s = '1011';
      expect(RegexValidation.hasMatch(s, RegexPattern.binary), true);
    });
    test('Positive case: MD5', () {
      String s = '3847820138564525205299f1f444c5ec';
      expect(RegexValidation.hasMatch(s, RegexPattern.md5), true);
    });
    test('Positive case: SHA1', () {
      String s = '717de03c9158ae10675c659c2fe8b27b71d50073';
      expect(RegexValidation.hasMatch(s, RegexPattern.sha1), true);
    });
    test('Positive case: SHA256', () {
      String s =
          '6ab016eae79b6a14980adf361b551bfbff90d38f7490987e60a9590f2ffb37bc';
      expect(RegexValidation.hasMatch(s, RegexPattern.sha256), true);
    });
    test('Positive case: SSN (Social Security Number)', () {
      String s = '333-22-4444';
      expect(RegexValidation.hasMatch(s, RegexPattern.ssn), true);
    });
    test('Positive case: IPv4', () {
      String s = '127.0.0.1';
      expect(RegexValidation.hasMatch(s, RegexPattern.ipv4), true);
    });
    test('Positive case: IPv6', () {
      String s = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';
      expect(RegexValidation.hasMatch(s, RegexPattern.ipv6), true);
    });
    test('Positive case: ISBN', () {
      String s = 'ISBN-10 3-642-11746-5';
      expect(RegexValidation.hasMatch(s, RegexPattern.isbn), true);
    });
    test('Positive case: Github Repository', () {
      String s = 'git@github.com:agungnursatria/regex_pattern.git';
      expect(RegexValidation.hasMatch(s, RegexPattern.github), true);
    });
    test('Positive case: Passport', () {
      String s = 'A1234567';
      expect(RegexValidation.hasMatch(s, RegexPattern.passport), true);
    });
    test('Positive case: Currency', () {
      String s = 'Rp 1.234,56';
      expect(RegexValidation.hasMatch(s, RegexPattern.currency), true);
    });
    test('Positive case: Numeric Only', () {
      String s = '12341234';
      expect(RegexValidation.hasMatch(s, RegexPattern.numericOnly), true);
    });
    test('Positive case: Alphabet Only', () {
      String s = 'abc';
      expect(RegexValidation.hasMatch(s, RegexPattern.alphabetOnly), true);
    });
    test('Positive case: Password (Easy) (Letter Only)', () {
      String s = 'abcdefgh';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordEasy), true);
    });
    test('Positive case: Password (Easy) (Number Only)', () {
      String s = '12345678';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordEasy), true);
    });
    test('Positive case: Password (Easy) (Letter, Number, Symbol)', () {
      String s = 't@st_123';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordEasy), true);
    });
    test('Positive case: Password (Normal 1) (1 Letter Only)', () {
      String s = 'a1234567';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordNormal1), true);
    });
    test('Positive case: Password (Normal 1) (1 Number Only)', () {
      String s = 'testttt1';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordNormal1), true);
    });
    test('Positive case: Password (Normal 1) (With Symbol)', () {
      String s = 't@st_123';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordNormal1), true);
    });
    test('Positive case: Password (Normal 2) (1 Letter Only)', () {
      String s = 'a1234567';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordNormal1), true);
    });
    test('Positive case: Password (Normal 2) (1 Number Only)', () {
      String s = 'testttt1';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordNormal1), true);
    });
    test('Positive case: Password (Normal 3)', () {
      String s = 'Testttt1';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordNormal1), true);
    });
    test('Positive case: Password (Hard)', () {
      String s = 'T@st_123';
      expect(RegexValidation.hasMatch(s, RegexPattern.passwordNormal1), true);
    });
  });
}

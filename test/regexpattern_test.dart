import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test('Positive case: Hexadecimal (3 character)', () {
      const String s = '#12F';
      expect(s.isHex(), true);
    });
    test('Positive case: Hexadecimal (6 character)', () {
      const String s = '#12FF52';
      expect(s.isHex(), true);
    });
    test('Positive case: Email', () {
      const String s = 'yourn1823.ame@gmail123.com';
      expect(s.isEmail(), true);
    });
    test('Positive case: URL', () {
      const String s = 'https://google.com';
      expect(s.isUrl(), true);
    });
    test('Positive case: Phone', () {
      const String s = '(+12) 123123123';
      expect(s.isPhone(), true);
    });
    test('Positive case: Image', () {
      const String s = 'test.jpg';
      expect(s.isImage(), true);
    });
    test('Positive case: Audio', () {
      const String s = 'test.mp3';
      expect(s.isAudio(), true);
    });
    test('Positive case: Video', () {
      const String s = 'test.mp4';
      expect(s.isVideo(), true);
    });
    test('Positive case: Txt', () {
      const String s = 'test.txt';
      expect(s.isTxt(), true);
    });
    test('Positive case: Document Ms.Word', () {
      const String s = 'test.docx';
      expect(s.isDoc(), true);
    });
    test('Positive case: Excel', () {
      const String s = 'test.xlsx';
      expect(s.isExcel(), true);
    });
    test('Positive case: Powerpoint', () {
      const String s = 'test.pptx';
      expect(s.isPPT(), true);
    });
    test('Positive case: APK', () {
      const String s = 'test.apk';
      expect(s.isApk(), true);
    });
    test('Positive case: PDF', () {
      const String s = 'test.pdf';
      expect(s.isPdf(), true);
    });
    test('Positive case: HTML', () {
      const String s = 'test.html';
      expect(s.isHtml(), true);
    });
    test('Positive case: Username', () {
      const String s = 'noobmaster69';
      expect(s.isUsername(), true);
    });
    test('Positive case: Date (UTC and iso8601)', () {
      const String s = '2020-04-27T08:14:39.977';
      expect(s.isDateTimeUTC(), true);
    });
    test('Positive case: binary', () {
      const String s = '1011';
      expect(s.isBinary(), true);
    });
    test('Positive case: MD5', () {
      const String s = '3847820138564525205299f1f444c5ec';
      expect(s.isMD5(), true);
    });
    test('Positive case: SHA1', () {
      const String s = '717de03c9158ae10675c659c2fe8b27b71d50073';
      expect(s.isSHA1(), true);
    });
    test('Positive case: SHA256', () {
      const String s =
          '6ab016eae79b6a14980adf361b551bfbff90d38f7490987e60a9590f2ffb37bc';
      expect(s.isSHA256(), true);
    });
    test('Positive case: SSN (Social Security Number)', () {
      const String s = '333-22-4444';
      expect(s.isSSN(), true);
    });
    test('Positive case: IPv4', () {
      const String s = '127.0.0.1';
      expect(s.isIPV4(), true);
    });
    test('Positive case: IPv6', () {
      const String s = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';
      expect(s.isIPV6(), true);
    });
    test('Positive case: ISBN', () {
      const String s = 'ISBN-10 3-642-11746-5';
      expect(s.isISBN(), true);
    });
    test('Positive case: Github Repository', () {
      const String s = 'git@github.com:agungnursatria/regex_pattern.git';
      expect(s.isGithub(), true);
    });
    test('Positive case: Passport', () {
      const String s = 'A1234567';
      expect(s.isPassport(), true);
    });
    test('Positive case: Currency', () {
      const String s = 'Rp 1.234,56';
      expect(s.isCurrency(), true);
    });
    test('Positive case: Numeric Only', () {
      const String s = '12341234';
      expect(s.isNumeric(), true);
    });
    test('Positive case: Alphabet Only', () {
      const String s = 'abc';
      expect(s.isAlphabet(), true);
    });
    test('Positive case: Password (Easy) (Letter Only)', () {
      const String s = 'abcdefgh';
      expect(s.isPasswordEasy(), true);
    });
    test('Positive case: Password (Easy) (Number Only)', () {
      const String s = '12345678';
      expect(s.isPasswordEasy(), true);
    });
    test('Positive case: Password (Easy) (Letter, Number, Symbol)', () {
      const String s = 't@st_123';
      expect(s.isPasswordEasy(), true);
    });
    test('Positive case: Password (Normal 1)', () {
      const String s = 'a1234567';
      expect(s.isPasswordNormal1(), true);
    });
    test('Positive case: Password (Normal 1) (With Symbol)', () {
      const String s = 't@st_123';
      expect(s.isPasswordNormal1(), true);
    });
    test('Positive case: Password (Normal 2)', () {
      const String s = 'a1234s67';
      expect(s.isPasswordNormal2(), true);
    });
    test('Positive case: Password (Normal 3)', () {
      const String s = 'Testttt1';
      expect(s.isPasswordNormal3(), true);
    });
    test('Positive case: Password (Hard)', () {
      const String s = 'T@st_123';
      expect(s.isPasswordHard(), true);
    });
    test('Positive case: Password (Easy) (Allowed Whitespace)', () {
      const String s = 't@st_ 123';
      expect(
        s.isPasswordEasyWithspace(),
        true,
      );
    });
    test(
      'Positive case: Password (Normal 1) (With Symbol) (Allowed Whitespace)',
      () {
        const String s = 't@st_1 23';
        expect(
          s.isPasswordNormal1Withspace(),
          true,
        );
      },
    );
    test(
      'Positive case: Password (Normal 2) (Allowed Whitespace)',
      () {
        const String s = 'a123 4s67';
        expect(
          s.isPasswordNormal2Withspace(),
          true,
        );
      },
    );
    test('Positive case: Password (Normal 3)', () {
      const String s = 'Test ttt1';
      expect(
        s.isPasswordNormal3Withspace(),
        true,
      );
    });
    test(
      'Positive case: Password (Hard) (Allowed Whitespace)',
      () {
        const String s = 'T@st_1 23';
        expect(
          s.isPasswordHardWithspace(),
          true,
        );
      },
    );
  });
}

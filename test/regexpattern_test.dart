import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test('Positive case: Hexadecimal (3 character)', () {
      String s = '#12F';
      expect(s.isHex(), true);
    });
    test('Positive case: Hexadecimal (6 character)', () {
      String s = '#12FF52';
      expect(s.isHex(), true);
    });
    test('Positive case: Email', () {
      String s = 'yourn1823.ame@gmail123.com';
      expect(s.isEmail(), true);
    });
    test('Positive case: URL', () {
      String s = 'https://google.com';
      expect(s.isUrl(), true);
    });
    test('Positive case: URL (local)', () {
      String s = 'http://192.168.0.1:8080';
      expect(s.isUrl(), true);
    });
    test('Positive case: Phone', () {
      String s = '(+12) 123123123';
      expect(s.isPhone(), true);
    });
    test('Positive case: Image', () {
      String s = 'test.jpg';
      expect(s.isImage(), true);
    });
    test('Positive case: Audio', () {
      String s = 'test.mp3';
      expect(s.isAudio(), true);
    });
    test('Positive case: Video', () {
      String s = 'test.mp4';
      expect(s.isVideo(), true);
    });
    test('Positive case: Txt', () {
      String s = 'test.txt';
      expect(s.isTxt(), true);
    });
    test('Positive case: Document Ms.Word', () {
      String s = 'test.docx';
      expect(s.isDoc(), true);
    });
    test('Positive case: Excel', () {
      String s = 'test.xlsx';
      expect(s.isExcel(), true);
    });
    test('Positive case: Powerpoint', () {
      String s = 'test.pptx';
      expect(s.isPPT(), true);
    });
    test('Positive case: APK', () {
      String s = 'test.apk';
      expect(s.isApk(), true);
    });
    test('Positive case: PDF', () {
      String s = 'test.pdf';
      expect(s.isPdf(), true);
    });
    test('Positive case: HTML', () {
      String s = 'test.html';
      expect(s.isHtml(), true);
    });
    test('Positive case: Username', () {
      String s = 'noobmaster69';
      expect(s.isUsername(), true);
    });
    test('Positive case: Date (UTC and iso8601)', () {
      String s = '2020-04-27T08:14:39.977';
      expect(s.isDateTimeUTC(), true);
    });
    test('Positive case: binary', () {
      String s = '1011';
      expect(s.isBinary(), true);
    });
    test('Positive case: MD5', () {
      String s = '3847820138564525205299f1f444c5ec';
      expect(s.isMD5(), true);
    });
    test('Positive case: SHA1', () {
      String s = '717de03c9158ae10675c659c2fe8b27b71d50073';
      expect(s.isSHA1(), true);
    });
    test('Positive case: SHA256', () {
      String s =
          '6ab016eae79b6a14980adf361b551bfbff90d38f7490987e60a9590f2ffb37bc';
      expect(s.isSHA256(), true);
    });
    test('Positive case: SSN (Social Security Number)', () {
      String s = '333-22-4444';
      expect(s.isSSN(), true);
    });
    test('Positive case: IPv4', () {
      String s = '127.0.0.1';
      expect(s.isIPV4(), true);
    });
    test('Positive case: IPv6', () {
      String s = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';
      expect(s.isIPV6(), true);
    });
    test('Positive case: ISBN', () {
      String s = 'ISBN-10 3-642-11746-5';
      expect(s.isISBN(), true);
    });
    test('Positive case: Github Repository', () {
      String s = 'git@github.com:agungnursatria/regex_pattern.git';
      expect(s.isGithub(), true);
    });
    test('Positive case: Passport', () {
      String s = 'A1234567';
      expect(s.isPassport(), true);
    });
    test('Positive case: Currency', () {
      String s = 'Rp 1.234,56';
      expect(s.isCurrency(), true);
    });
    test('Positive case: Numeric Only', () {
      String s = '12341234';
      expect(s.isNumeric(), true);
    });
    test('Positive case: Alphabet Only', () {
      String s = 'abc';
      expect(s.isAlphabet(), true);
    });
    test('Positive case: Alphabet and Numeric Only', () {
      String s = 'abc';
      expect(s.isAlphabetNumeric(), true);
    });
    test('Positive case: Alphabet and Numeric Only', () {
      String s = '123';
      expect(s.isAlphabetNumeric(), true);
    });
    test('Positive case: Alphabet and Numeric Only', () {
      String s = 'abc123';
      expect(s.isAlphabetNumeric(), true);
    });
    test('Positive case: Alphabet, Numeric, Symbol Only', () {
      String s = 'abc';
      expect(s.isAlphabetNumericSymbol(), true);
    });
    test('Positive case: Alphabet, Numeric, Symbol Only', () {
      String s = '123';
      expect(s.isAlphabetNumericSymbol(), true);
    });
    test('Positive case: Alphabet, Numeric, Symbol Only', () {
      String s = '!@#%^&';
      expect(s.isAlphabetNumericSymbol(), true);
    });
    test('Positive case: Alphabet and Numeric Only', () {
      String s = 'abc123!@#%^&';
      expect(s.isAlphabetNumericSymbol(), true);
    });
    test('Positive case: Password (Easy) (Letter Only)', () {
      String s = 'abcdefgh';
      expect(s.isPasswordEasy(), true);
    });
    test('Positive case: Password (Easy) (Number Only)', () {
      String s = '12345678';
      expect(s.isPasswordEasy(), true);
    });
    test('Positive case: Password (Easy) (Letter, Number, Symbol)', () {
      String s = 't@st_123';
      expect(s.isPasswordEasy(), true);
    });
    test('Positive case: Password (Normal 1)', () {
      String s = 'a1234567';
      expect(s.isPasswordNormal1(), true);
    });
    test('Positive case: Password (Normal 1) (With Symbol)', () {
      String s = 't@st_123';
      expect(s.isPasswordNormal1(), true);
    });
    test('Positive case: Password (Normal 2)', () {
      String s = 'a1234s67';
      expect(s.isPasswordNormal2(), true);
    });
    test('Positive case: Password (Normal 3)', () {
      String s = 'Testttt1';
      expect(s.isPasswordNormal3(), true);
    });
    test('Positive case: Password (Hard)', () {
      String s = 'T@st_123';
      expect(s.isPasswordHard(), true);
    });
    test('Positive case: Password (Easy) (Allowed Whitespace)', () {
      String s = 't@st_ 123';
      expect(
        s.isPasswordEasyWithspace(),
        true,
      );
    });
    test(
      'Positive case: Password (Normal 1) (With Symbol) (Allowed Whitespace)',
      () {
        String s = 't@st_1 23';
        expect(
          s.isPasswordNormal1Withspace(),
          true,
        );
      },
    );
    test(
      'Positive case: Password (Normal 2) (Allowed Whitespace)',
      () {
        String s = 'a123 4s67';
        expect(
          s.isPasswordNormal2Withspace(),
          true,
        );
      },
    );
    test('Positive case: Password (Normal 3)', () {
      String s = 'Test ttt1';
      expect(
        s.isPasswordNormal3Withspace(),
        true,
      );
    });
    test(
      'Positive case: Password (Hard) (Allowed Whitespace)',
      () {
        String s = 'T@st_1 23';
        expect(
          s.isPasswordHardWithspace(),
          true,
        );
      },
    );
  });
}

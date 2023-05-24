import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test(
      'GIVEN text = noobmaster69 '
      'WHEN call isUsername function '
      'THEN expect the result is true',
      () {
        String s = 'noobmaster69';
        expect(s.isUsername(), true);
      },
    );

    test(
      'GIVEN text = noob.master_69 '
      'WHEN call isUsername function '
      'THEN expect the result is false',
      () {
        String s = 'noob.master_69';
        expect(s.isUsername(), true);
      },
    );
  });
}

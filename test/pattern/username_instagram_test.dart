import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test(
      'GIVEN text = noobmaster69 '
      'WHEN call isUsernameInstagram function '
      'THEN expect the result is true',
      () {
        String s = 'noobmaster69';
        expect(s.isUsernameInstagram(), true);
      },
    );

    test(
      'GIVEN text = @noobmaster69 '
      'WHEN call isUsernameInstagram function '
      'THEN expect the result is true',
      () {
        String s = '@noobmaster69';
        expect(s.isUsernameInstagram(), true);
      },
    );
  });
}

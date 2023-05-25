import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test(
      'GIVEN address 0x71C7656EC7ab88b098defB751B7401B5f6d8976F'
      'WHEN call isEthereumAddress function '
      'THEN expect the result is true',
      () {
        String s = '0x71C7656EC7ab88b098defB751B7401B5f6d8976F';
        expect(s.isEthereumAddress(), true);
      },
    );
  });
}

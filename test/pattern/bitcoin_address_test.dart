import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test(
      'GIVEN P2PKH address 1BvBMSEYstWetqTFn5Au4m4GFg7xJaNVN2'
      'WHEN call isBitcoinAddress function '
      'THEN expect the result is true',
      () {
        String s = '1BvBMSEYstWetqTFn5Au4m4GFg7xJaNVN2';
        expect(s.isBitcoinAddress(), true);
      },
    );

    test(
      'GIVEN P2SH address 3J98t1WpEZ73CNmQviecrnyiWrnqRhWNLy'
      'WHEN call isBitcoinAddress function '
      'THEN expect the result is true',
      () {
        String s = '3J98t1WpEZ73CNmQviecrnyiWrnqRhWNLy';
        expect(s.isBitcoinAddress(), true);
      },
    );

    test(
      'GIVEN Bech32 address bc1qarsrrr7ASHy5643ydab9re59gtzzwfrah'
      'WHEN call isBitcoinAddress function '
      'THEN expect the result is true',
      () {
        String s = 'bc1qarsrrr7ASHy5643ydab9re59gtzzwfrah';
        expect(s.isBitcoinAddress(), true);
      },
    );
  });
}

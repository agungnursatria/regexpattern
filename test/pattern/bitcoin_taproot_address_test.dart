import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test(
      'GIVEN address bc1p5d7rjq7g6rdk2yhzks9smlaqtedr4dekq08ge8ztwac72sfr9rusxg3297'
      'WHEN call isBitcoinTaprootAddress function '
      'THEN expect the result is true',
      () {
        String s =
            'bc1p5d7rjq7g6rdk2yhzks9smlaqtedr4dekq08ge8ztwac72sfr9rusxg3297';
        expect(s.isBitcoinTaprootAddress(), true);
      },
    );
  });
}

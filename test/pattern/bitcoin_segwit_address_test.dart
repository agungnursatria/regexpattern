import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test(
      'GIVEN address bc1qar0srrr7xfkvy5l643lydnw9re59gtzzwf5mdq'
      'WHEN call isBitcoinSegwitAddress function '
      'THEN expect the result is true',
      () {
        String s = 'bc1qar0srrr7xfkvy5l643lydnw9re59gtzzwf5mdq';
        expect(s.isBitcoinSegwitAddress(), true);
      },
    );
  });
}

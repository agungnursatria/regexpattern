import 'package:flutter_test/flutter_test.dart';
import 'package:regexpattern/regexpattern.dart';

void main() {
  group('Positive Case', () {
    test(
      'GIVEN text = http://google.com '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'http://google.com';
        expect(s.isUrl(), true);
      },
    );
    test(
      'GIVEN text = http://www.example.com/index.html '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'http://www.example.com/index.html';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = http://192.168.0.1:8080 '
      'WHEN call isUrl function '
      'THEN expect the result is false',
      () {
        String s = 'http://192.168.0.1:8080';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = https://john.doe@www.example.com:123/forum/questions/?tag=networking&order=newest#top '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s =
            'https://john.doe@www.example.com:123/forum/questions/?tag=networking&order=newest#top';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = http://a/b/c/d;p?q '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'http://a/b/c/d;p?q';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = www.youtube.com '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'www.youtube.com';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = stackoverflow.com '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'stackoverflow.com';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = twitter:// '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'twitter://';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = fb://profile/33138223345 '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'fb://profile/33138223345';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = mailto:John.Doe@example.com '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'mailto:John.Doe@example.com';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = ldap://[2001:db8::7]/c=GB?objectClass?one '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'ldap://[2001:db8::7]/c=GB?objectClass?one';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = tel:+1-816-555-1212 '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'tel:+1-816-555-1212';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = telnet://192.0.2.16:80/ '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'telnet://192.0.2.16:80/';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = news:comp.infosystems.www.servers.unix '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'news:comp.infosystems.www.servers.unix';
        expect(s.isUrl(), true);
      },
    );

    test(
      'GIVEN text = urn:oasis:names:specification:docbook:dtd:xml:4.1.2 '
      'WHEN call isUrl function '
      'THEN expect the result is true',
      () {
        String s = 'urn:oasis:names:specification:docbook:dtd:xml:4.1.2';
        expect(s.isUrl(), true);
      },
    );
  });
}

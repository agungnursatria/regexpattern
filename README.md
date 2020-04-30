# RegexPattern

Flutter collection of regex pattern with purpose for string validation.

## Getting Started

In your flutter project add the dependency:

```yml
dependencies:
  ...
  regexpattern: ^0.1.2
```

## Usage
#### Importing package
```dart
import 'package:regexpattern/regexpattern.dart';
```
#### Using RegexPattern

#### Matching string to pattern
```dart
bool hasMatch = RegexValidation.hasMatch(<String>, <RegexPattern>);
```

### RegexPattern

Collection of regex pattern used to validating data

```dart
Pattern username;
Pattern email;
Pattern url;
Pattern phone;
Pattern hexadecimal;
Pattern vector;
Pattern image;
Pattern audio;
Pattern video;
Pattern txt;
Pattern doc;
Pattern excel;
Pattern ppt;
Pattern apk;
Pattern pdf;
Pattern html;
Pattern basicDateTime; // Date time in UTC and Iso8601
Pattern binary;
Pattern md5;
Pattern sha1;
Pattern sha256;
Pattern ssn;
Pattern ipv4;
Pattern ipv6;
Pattern isbn;
Pattern github;
Pattern passport;
Pattern currency;
Pattern numericOnly;
Pattern alphabetOnly;
Pattern passwordEasy;
Pattern passwordNormal1;
Pattern passwordNormal2;
Pattern passwordNormal3;
Pattern passwordHard;
```
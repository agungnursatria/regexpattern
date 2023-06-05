# RegexPattern

Flutter collection of regex pattern for string validation.

## Getting Started

In your flutter project add the dependency:

```yml
dependencies:
  ...
  regexpattern: ^2.5.0
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

or

String text = 'https://google.com';
bool isUrl = text.isUrl(); // text.is<Pattern>();
```

### RegexPattern

Collection of regex pattern used to validating data

```dart
Pattern username;
Pattern usernameV2;
Pattern usernameGoogle;
Pattern usernameInstagram;
Pattern usernameDiscord;
Pattern email;
Pattern url;
Pattern uri;
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
Pattern dateTimeUTC;
Pattern dateTime;
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
Pattern alphaNumericOnly;
Pattern alphaNumericSymbolOnly;
Pattern noWhitespace;
Pattern passwordEasy;
Pattern passwordNormal1;
Pattern passwordNormal2;
Pattern passwordNormal3;
Pattern passwordHard;
Pattern passwordEasyAllowedWhitespace;
Pattern passwordNormal1AllowedWhitespace;
Pattern passwordNormal2AllowedWhitespace;
Pattern passwordNormal3AllowedWhitespace;
Pattern passwordHardAllowedWhitespace;
Pattern uuid;
Pattern bitcoinAddress;
Pattern bitcoinTaprootAddress;
Pattern bitcoinSegwitAddress;
Pattern ethereumAddress;
```

## CONTRIBUTION
If you wish to contribute, fork this repository and add your regex. Create a [PR](https://github.com/agungnursatria/regexpattern/pulls) & i'll check it.

## LICENSE
```
BSD 3-Clause License

Copyright (c) 2020, Agung Nursatria
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

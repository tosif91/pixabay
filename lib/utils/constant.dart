import 'package:flutter/material.dart';

class TikTokIcons{
  TikTokIcons._();

  static const _fontFamily = 'TikTokIcons';

  static const IconData chat_bubble = const IconData(0xe808, fontFamily: _fontFamily);
  static const IconData create = const IconData(0xe809, fontFamily: _fontFamily);
  static const IconData heart = const IconData(0xe80a, fontFamily: _fontFamily);
  static const IconData home = const IconData(0xe80b, fontFamily: _fontFamily);
  static const IconData messages = const IconData(0xe80c, fontFamily: _fontFamily);
  static const IconData profile = const IconData(0xe80d, fontFamily: _fontFamily);
  static const IconData reply = const IconData(0xe80e, fontFamily: _fontFamily);
  static const IconData search = const IconData(0xe80f, fontFamily: _fontFamily);
}

const List bottomItems = [
      {"icon":TikTokIcons.home, "label": "Home", "isIcon": true},
      {"icon": TikTokIcons.search, "label": "Discover", "isIcon":true},
      {"icon": "", "label": "", "isIcon": false},
      {"icon": TikTokIcons.messages, "label": "Inbox", "isIcon": true},
      {"icon": TikTokIcons.profile, "label": "Me", "isIcon": true}
    ];

  const String myKey='18250671-0a17e93bf2cfc4168b5d87257';  
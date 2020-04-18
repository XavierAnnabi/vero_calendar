import 'dart:async';

import 'package:flutter/services.dart';

class VeroCalendar {
  static const MethodChannel _channel =
      const MethodChannel('vero_calendar');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

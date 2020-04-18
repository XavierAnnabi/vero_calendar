import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vero_calendar/vero_calendar.dart';

void main() {
  const MethodChannel channel = MethodChannel('vero_calendar');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await VeroCalendar.platformVersion, '42');
  });
}

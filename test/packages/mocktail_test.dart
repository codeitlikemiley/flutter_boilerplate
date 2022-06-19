import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// A Real Cat class
class Cat {
  String sound() => 'meow!';
  bool likes(String food, {bool isHungry = false}) => false;
  final int lives = 9;
}

// A Mock Cat class
class MockCat extends Mock implements Cat {}

void main() {
  test('use mocktail to mock Class Cat', () {
    // Create a Mock Cat instance
    final cat = MockCat();
    when(() => cat.sound()).thenReturn('meow');
  });
}

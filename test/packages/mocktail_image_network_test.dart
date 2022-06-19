import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

void main() {
  testWidgets('can use mocktail for network images', (tester) async {
    await mockNetworkImages(() async {
      await tester.pumpWidget(const FakeApp());
      expect(find.byType(Image), findsOneWidget);
    });
  });
}

class FakeApp extends StatelessWidget {
  const FakeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image.network(
            'https://ipullrank.com/wp-content/uploads/2020/07/png-transparent-google-logo-g-suite-google-guava-google-plus-company-text-logo.png',
          ),
        ),
      ),
    );
  }
}

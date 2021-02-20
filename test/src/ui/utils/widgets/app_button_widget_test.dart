import 'package:estudo_app/src/ui/utils/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testes do button widget', () {
    testWidgets('[SUCCESS] - Teste do button widget', (WidgetTester tester) async {
      String string;
      await tester.pumpWidget(MaterialApp(
        builder: (_, __) {
          return AppButtonWidget(
            text: 'Click',
            onPressed: () {
              string = 'test';
            },
          );
        },
      ));
      final appButtonWidget = find.byKey(Key('AppButtonWidget'));
      await tester.runAsync(() async {
        await tester.tap(appButtonWidget);
        await tester.pumpAndSettle();
      });
      expect(find.text('Click'), findsOneWidget);
      final stringIsOk = string == 'test';
      expect(stringIsOk, true);
    });

    testWidgets('[ERROR] - Teste do button widget', (WidgetTester tester) async {
      String string;
      await tester.pumpWidget(MaterialApp(
        builder: (_, __) {
          return AppButtonWidget(
            text: 'Change',
            onPressed: () {
              string = 'test2';
            },
          );
        },
      ));
      final appButtonWidget = find.byKey(Key('AppButtonWidget'));
      await tester.runAsync(() async {
        await tester.tap(appButtonWidget);
        await tester.pumpAndSettle();
      });
      expect(find.text('Click'), findsNothing);
      final stringIsOk = string == 'test';
      expect(stringIsOk, false);
    });
  });
}

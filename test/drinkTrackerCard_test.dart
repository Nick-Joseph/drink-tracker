import 'package:drink_tracker/drinkTrackerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WaterIntakeCard widget tests', () {
    testWidgets('Widget displays correct initial water intake',
        (WidgetTester tester) async {
      // Build the widget
      await tester.pumpWidget(WaterIntakeCard());

      // Find the text widget that displays the water intake
      final intakeTextFinder = find.widgetWithText(Text, '0 oz');

      // Verify that the widget displays 0 ounces initially
      expect(intakeTextFinder, findsOneWidget);
    });

    testWidgets('Widget updates water intake correctly on increment',
        (WidgetTester tester) async {
      // Build the widget
      await tester.pumpWidget(WaterIntakeCard());

      // Find the increment button
      final incrementButtonFinder = find.byTooltip('Increment');

      // Tap the increment button twice
      await tester.tap(incrementButtonFinder);
      await tester.tap(incrementButtonFinder);

      // Rebuild the widget after the tap
      await tester.pump();

      // Find the text widget that displays the water intake
      final intakeTextFinder = find.widgetWithText(Text, '16 oz');

      // Verify that the widget displays the correct amount of water intake
      expect(intakeTextFinder, findsOneWidget);
    });

    testWidgets('Widget updates water intake correctly on decrement',
        (WidgetTester tester) async {
      // Build the widget
      await tester.pumpWidget(WaterIntakeCard());

      // Find the increment button
      final incrementButtonFinder = find.byTooltip('Increment');

      // Tap the increment button twice
      await tester.tap(incrementButtonFinder);
      await tester.tap(incrementButtonFinder);

      // Find the decrement button
      final decrementButtonFinder = find.byTooltip('Decrement');

      // Tap the decrement button once
      await tester.tap(decrementButtonFinder);

      // Rebuild the widget after the tap
      await tester.pump();

      // Find the text widget that displays the water intake
      final intakeTextFinder = find.widgetWithText(Text, '8 oz');

      // Verify that the widget displays the correct amount of water intake
      expect(intakeTextFinder, findsOneWidget);
    });

    testWidgets('Widget updates water intake correctly on custom add',
        (WidgetTester tester) async {
      // Build the widget
      await tester.pumpWidget(WaterIntakeCard());

      // Find the custom add button
      final customAddButtonFinder = find.byType(FloatingActionButton).last;

      // Tap the custom add button
      await tester.tap(customAddButtonFinder);

      // Find the text field for the custom amount
      final customAmountFinder = find.byType(TextField);

      // Enter a custom amount
      await tester.enterText(customAmountFinder, '20');

      // Find the add button in the dialog
      final addButtonFinder = find.widgetWithText(TextButton, 'Add');

      // Tap the add button
      await tester.tap(addButtonFinder);

      // Rebuild the widget after the tap
      await tester.pump();

      // Find the text widget that displays the water intake
      final intakeTextFinder = find.widgetWithText(Text, '20 oz');

      // Verify that the widget displays the correct amount of water intake
      expect(intakeTextFinder, findsOneWidget);
    });
  });
}

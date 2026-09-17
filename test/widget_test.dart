import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Profile screen renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Samuel Julian Kumaat'), findsOneWidget);
    expect(find.text('NIM: 2411041'), findsOneWidget);
    expect(find.text('Informatika'), findsOneWidget);
    expect(find.text('Skills'), findsOneWidget);
    expect(find.text('Contact'), findsOneWidget);
    expect(find.text('About Me'), findsOneWidget);
  });

  testWidgets('Skills section renders all skills', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('JavaScript'), findsOneWidget);
    expect(find.text('React'), findsOneWidget);
    expect(find.text('Tailwind CSS'), findsOneWidget);
    expect(find.text('UI/UX'), findsOneWidget);
    expect(find.text('Node.js'), findsOneWidget);
    expect(find.text('Git/GitHub'), findsOneWidget);
    expect(find.text('Figma'), findsOneWidget);
    expect(find.text('Flutter'), findsOneWidget);
  });

  testWidgets('Contact items render with icons and labels', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Phone'), findsOneWidget);
    expect(find.text('+62 8XX-XXXX-XXXX'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('samuel.julian@example.com'), findsOneWidget);
    expect(find.text('LinkedIn'), findsOneWidget);
    expect(find.text('linkedin.com/in/samueljulian'), findsOneWidget);
    expect(find.text('GitHub'), findsOneWidget);
    expect(find.text('github.com/samueljulian'), findsOneWidget);
  });

  testWidgets('Multimedia card renders with play button', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Perjalanan belajar & project pilihan saya.'), findsOneWidget);
    expect(find.byIcon(Icons.play_arrow), findsOneWidget);
  });

  testWidgets('Profile avatar renders', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(ClipOval), findsOneWidget);
  });
}

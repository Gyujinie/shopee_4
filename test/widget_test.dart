import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopee4/login_page.dart';

void main() {
  testWidgets('Login page UI test', (WidgetTester tester) async {
    // Bangun widget LoginPage
    await tester.pumpWidget(const MaterialApp(home: MyHomePage()));

    // Cari widget TextField untuk nomor telepon
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.widgetWithIcon(TextField, Icons.phone), findsOneWidget);
    expect(find.text('No. Handphone/Email/Username'), findsOneWidget);

    // Cari widget TextField untuk password
    expect(find.widgetWithIcon(TextField, Icons.lock), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    // Cari tombol Log In
    expect(find.text('Log In'), findsOneWidget);

    // Cari tombol Lupa?
    expect(find.text('Lupa?'), findsOneWidget);

    // Cari ikon-ikon social login
    expect(find.byType(IconButton), findsNWidgets(3));
    expect(find.byIcon(Icons.phone), findsOneWidget);
    expect(find.byIcon(FontAwesomeIcons.google), findsOneWidget);
    expect(find.byIcon(Icons.facebook), findsOneWidget);
  });
}

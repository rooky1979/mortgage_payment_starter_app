import 'package:flutter/material.dart';
import 'package:mortgage_payment_starter_app/ui/mortgage_app.dart';
import 'package:mortgage_payment_starter_app/util/colors.dart';

final ThemeData _mortgageTheme = buildAppTheme();

ThemeData buildAppTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
      accentColor: primaryLight,
      primaryColor: primaryPink400,
      buttonColor: secondaryPink900,
      scaffoldBackgroundColor: Colors.blue[100],
      cardColor: primaryLight,
      textTheme: _appTextTheme(base.textTheme),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: secondaryDark),
              borderRadius: BorderRadius.circular(8.0))));
}

TextTheme _appTextTheme(TextTheme base) {
  return base.copyWith(
      bodyText2: TextStyle(
          fontSize: 16, color: textOnPrimary, fontWeight: FontWeight.bold));
}

void main() => runApp(new MaterialApp(
      theme: _mortgageTheme,
      home: MortgageApp(),
    ));

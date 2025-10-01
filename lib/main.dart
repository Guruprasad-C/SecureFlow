import 'package:flutter/material.dart';
import 'package:third_app/widgets/expenses.dart';
// import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 96, 59, 181),
);

// var kDarkScheme = ColorScheme.fromSeed(
//   brightness: Brightness.light,
//   seedColor: Color.fromARGB(255, 5, 99, 125),
// );

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) {});

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.dark().copyWith(
      //   colorScheme: kDarkScheme,
      // ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
            foregroundColor: kColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle().copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: kColorScheme.onSecondaryContainer,
              ),
            ),
      ),
      home: Expenses(),
    ),
  );
}

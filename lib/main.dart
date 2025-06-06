import 'package:flutter/material.dart';
import 'package:my_expense_tracker/widgets/expenses.dart';


var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
  
);
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
          // ignore: deprecated_member_use
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(


            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ) ,

          cardTheme: CardTheme( ).copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge:  TextStyle(
                  fontWeight: FontWeight.normal,
                  color:kColorScheme.onSecondaryContainer,
                  fontSize: 14,
                ),
              ),
          scaffoldBackgroundColor: const Color.fromARGB(255, 234, 175, 237)),

          
      home: const Expenses(),
    ),
  );
}
import 'package:flutter/material.dart';

class CustomThemeApp {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: primary,
        backgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: primary, elevation: 0),
        textButtonTheme: TextButtonThemeData( style: TextButton.styleFrom(foregroundColor: primary)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
        ),
        elevatedButtonTheme: ElevatedButtonThemeData( 
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: const StadiumBorder(),
            elevation: 0
          )),
          inputDecorationTheme: const InputDecorationTheme(
            floatingLabelStyle: TextStyle(color:primary),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide( color: primary),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide( color: primary),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),
              )
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10),
              )
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            elevation: 0,
            selectedItemColor: primary
          )
      );

  static final ThemeData darkTheme = ThemeData.light().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(color: primary, elevation: 0),
        scaffoldBackgroundColor: Colors.black
      );
}
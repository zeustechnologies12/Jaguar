import 'package:flutter/material.dart';
import 'package:flutter_first_project/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_first_project/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_first_project/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_first_project/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_first_project/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_first_project/utils/theme/custom_themes/textfield_theme.dart';
import 'custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static  ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
    
    );
  static  ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,

  );
}


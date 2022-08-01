import 'package:flutter/material.dart';
import 'package:flutter_architecture_course/presentation/color_manager.dart';
import 'package:flutter_architecture_course/presentation/font_manager.dart';
import 'package:flutter_architecture_course/presentation/styles_manager.dart';
import 'package:flutter_architecture_course/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //main colors of the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1, //disabled buttons, etc...
      // ripple color
      splashColor: ColorManager.primaryOpacity70,
      accentColor: ColorManager.grey,
      //card view theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),
      //appbar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle: getRegularSyle(
          color: ColorManager.white,
          fontSize: FontSize.s16,
        ),
      ),
      //button theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70,
      ),
      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularSyle(color: ColorManager.white),
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
        ),
      ),
      //text theme
      textTheme: TextTheme(
        headline1: getSemiBoldSyle(
          color: ColorManager.darkGrey,
          fontSize: FontSize.s16,
        ),
        subtitle1: getMediumSyle(
          color: ColorManager.lightGrey,
          fontSize: FontSize.s14,
        ),
        caption: getRegularSyle(
          color: ColorManager.grey1,
        ),
        bodyText1: getRegularSyle(
          color: ColorManager.grey,
        ),
      )
      //input decoration theme (text form field)
      );
}

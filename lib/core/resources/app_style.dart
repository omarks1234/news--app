import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/resources/colorManager.dart';

class AppStyle {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: ColorManager.primaryDarkColor ,
      titleTextStyle:TextStyle(
        fontSize:20.sp ,
        fontWeight: FontWeight.w500 ,
        color: ColorManager.primaryLightColor,

      )


    ) ,
        drawerTheme: DrawerThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,

          ),
          backgroundColor: Colors.black,
          width: 269.w ,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24.sp ,
            height: 1.5 ,
            color: ColorManager.primaryLightColor
          ) ,
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.sp ,
            height: 1.5 ,
            color: ColorManager.primaryDarkColor

          ) ,
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: ColorManager.primaryLightColor ,
             primary: ColorManager.primaryLightColor ,
             secondary: ColorManager.primaryDarkColor ,
        ) ,
  );
  static ThemeData darkTheme = ThemeData(

    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.red ,
        titleTextStyle:TextStyle(
          fontSize:20.sp ,
          fontWeight: FontWeight.w500 ,
          color: ColorManager.primaryLightColor,

        )


    ) ,
    drawerTheme: DrawerThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,

      ),
      backgroundColor: Colors.black,
      width: 269.w ,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorManager.primaryDarkColor ,
      primary: ColorManager.primaryDarkColor ,
      secondary: ColorManager.primaryLightColor ,
    ) ,
  );
}
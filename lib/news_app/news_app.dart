import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/provider/theme_provider.dart';
import 'package:news_app/core/resources/app_style.dart';
import 'package:news_app/core/resources/routesManager.dart';
import 'package:news_app/ui/home/screen/home_screen.dart';
import 'package:provider/provider.dart';

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852), // size of the design on figma
      minTextAdapt: true, // for font size
      splitScreenMode: true, // for two screens of two applications
      builder:(context, child) {
        ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            Routesmanager.home : (_)=>HomeScreen(),
          },
          initialRoute: Routesmanager.home,
          theme: AppStyle.lightTheme,
          darkTheme: AppStyle.darkTheme,
          themeMode: themeProvider.themeMode,

        );
      } ,
    ) ;
  }
}
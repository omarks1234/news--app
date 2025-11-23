import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/provider/theme_provider.dart';
import 'package:news_app/news_app/news_app.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: EasyLocalization(
          supportedLocales: [
            Locale("en"),
            Locale("ar")
          ],
          path: 'assets/translation',
          fallbackLocale: Locale("en"),
          child: NewsApp()),
    ),
  );
}

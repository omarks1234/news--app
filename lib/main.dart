import 'package:flutter/material.dart';
import 'package:news_app/core/provider/theme_provider.dart';
import 'package:news_app/news_app/news_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create:(context) => ThemeProvider(),
  child: NewsApp()));
}


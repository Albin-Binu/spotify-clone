import 'package:flutter/material.dart';
import 'package:spotifyclone/core/configs/theme/app_theme.dart';
import 'package:spotifyclone/presentation/splash/pages/splash.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
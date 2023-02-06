import 'package:bookly_app/constatnts.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Colors.white,
        )
      ).copyWith(
        scaffoldBackgroundColor:kPrimaryColor,
      ),
      themeMode: ThemeMode.dark,

    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/utils/constants/colors.dart';
import 'package:ss_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme:  SAppTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: SColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: SColors.white,
          ),
        ),

      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ss_store/utils/theme/theme.dart';
import 'features/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme:  SAppTheme.darkTheme,
      home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

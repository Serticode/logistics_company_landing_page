import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logistics_landing_page/screens/landing_page/landing_page.dart';
import 'package:logistics_landing_page/shared/app_texts.dart';
import 'package:logistics_landing_page/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: Lita(),
    ),
  );
}

class Lita extends StatelessWidget {
  const Lita({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: false,
      ensureScreenSize: true,

      //! 1440 BY 1024 - THAT'S THE LAYOUT GIVEN ON THE DESIGN BOARD
      designSize: const Size(1512, 1632),
      builder: (context, child) {
        return MaterialApp(
          title: AppTexts.appName,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.theTheme,
          home: const LandingPage(),
        );
      },
    );
  }
}

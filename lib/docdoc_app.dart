import 'package:doctorito/core/routing/app_router.dart';
import 'package:doctorito/core/routing/routes.dart';
import 'package:doctorito/core/theme/colors.dart';
import 'package:doctorito/features/auth/onboarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const OnBoardingView(),
        theme: ThemeData(
            useMaterial3: false,
            primaryColor: MyColors.primaryColor,
            primarySwatch: MaterialColor(MyColors.primaryColor.value, const {
              50: MyColors.primaryColor,
              100: MyColors.primaryColor,
              200: MyColors.primaryColor,
              300: MyColors.primaryColor,
              400: MyColors.primaryColor,
              500: MyColors.primaryColor,
              600: MyColors.primaryColor,
              700: MyColors.primaryColor,
              800: MyColors.primaryColor,
              900: MyColors.primaryColor
            }),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.primaryColor,
            ))),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routes.onBoardingView,
      ),
    );
  }
}

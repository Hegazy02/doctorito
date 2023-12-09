import 'package:doctorito/core/routing/app_router.dart';
import 'package:doctorito/core/routing/routes.dart';
import 'package:doctorito/core/theme/colors.dart';
import 'package:doctorito/features/home/presentation/views/on_boarding_view.dart';
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
            primaryColor: MyColors.primaryColor,
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.primaryColor,
            ))),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routes.loginView,
      ),
    );
  }
}

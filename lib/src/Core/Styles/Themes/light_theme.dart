part of 'imports_themes.dart';

final ThemeData _lightTheme = _defaultTheme.copyWith(
    brightness: Brightness.light,
    appBarTheme: getAppBarTheme(isDark: false),
    colorScheme: GetColorScheme.light,
    scaffoldBackgroundColor: AppColors.get.white,
    tabBarTheme: TabBarTheme(
      unselectedLabelStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          fontFamily: AppStrings.fontFamily),
      unselectedLabelColor: AppColors.get.tTFPrefixColor,
      dividerColor: Colors.transparent,
      labelStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.get.primary,
          fontFamily: AppStrings.fontFamily),
    ));

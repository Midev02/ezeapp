// ignore_for_file: prefer_const_constructors

import 'package:ezeapp/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ThemePerso {
  static final lightTheme = ThemeData.light().copyWith(
    listTileTheme: ListTileThemeData(
        textColor: Colors.black,
        style: ListTileStyle.drawer,
        iconColor: Colors.black),
    appBarTheme: AppBarTheme(
      titleSpacing: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontFamily: "poppins",
        fontSize: Get.width * 0.05,
        color: Colors.black,
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.white,
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: ConstantColors.blueprimary,
      onPrimary: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true, // this will remove the default content padding
      // now you can customize it here or add padding widget
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ConstantColors.blueprimary,
      foregroundColor: Colors.white,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(ConstantColors.blueprimary),
    ),
    tabBarTheme: TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: ConstantColors.blueprimary,
          width: 2,
        ),
      ),
      labelColor: ConstantColors.blueprimary,
      unselectedLabelColor: Colors.black,
      labelStyle: TextStyle(
        color: ConstantColors.blueprimary,
        fontFamily: "poppins",
        fontWeight: FontWeight.w700,
        fontSize: 15,
      ),
      unselectedLabelStyle: TextStyle(
        color: ConstantColors.blueprimary,
        fontFamily: "poppins",
        fontWeight: FontWeight.w400,
        fontSize: 15,
      ),
    ),
    dialogTheme: DialogTheme(
      contentTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: "poppins",
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: "poppins",
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
    cardTheme: CardTheme(color: Colors.white),
    shadowColor: Colors.grey.withOpacity(0.1),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontFamily: "poppins",
          fontWeight: FontWeight.w500,
          color: ConstantColors.blueprimary,
          fontSize: 16,
        ),
      ),
    )),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
      ),
      headline6: TextStyle(
        fontFamily: "poppins",
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        fontFamily: "poppins",
        fontSize: 13,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontFamily: "poppins",
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        fontFamily: "poppins",
        color: Colors.black,
      ),
    ),
  );

  // static final darkTheme = ThemeData.dark().copyWith(
  //   dialogBackgroundColor: ConstantColors.backgroundDarkColor,
  //   scaffoldBackgroundColor: ConstantColors.backgroundDarkColor,
  //   listTileTheme: ListTileThemeData(
  //     textColor: Colors.white,
  //     style: ListTileStyle.drawer,
  //     iconColor: Colors.white,
  //   ),
  //   drawerTheme:
  //       DrawerThemeData(backgroundColor: ConstantColors.backgroundDarkColor),
  //   appBarTheme: AppBarTheme(
  //     titleSpacing: 0,
  //     systemOverlayStyle: SystemUiOverlayStyle.light,
  //     backgroundColor: ConstantColors.backgroundDarkColor,
  //     elevation: 0,
  //     titleTextStyle: TextStyle(
  //       fontFamily: "poppins",
  //       fontSize: Get.width * 0.05,
  //       color: Colors.white,
  //     ),
  //   ),
  //   bottomAppBarTheme: BottomAppBarTheme(
  //     color: ConstantColors.backgroundDarkColor,
  //   ),
  //   colorScheme: const ColorScheme.light().copyWith(
  //     primary: ConstantColors.blueprimary,
  //     onPrimary: Colors.white,
  //   ),
  //   inputDecorationTheme: InputDecorationTheme(
  //     isDense: true, // this will remove the default content padding
  //     // now you can customize it here or add padding widget
  //     contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
  //   ),
  //   floatingActionButtonTheme: FloatingActionButtonThemeData(
  //     backgroundColor: ConstantColors.blueprimary,
  //     foregroundColor: Colors.white,
  //   ),
  //   bottomSheetTheme: BottomSheetThemeData(
  //     backgroundColor: Colors.transparent,
  //   ),
  //   radioTheme: RadioThemeData(
  //     fillColor: MaterialStateProperty.all(ConstantColors.blueprimary),
  //   ),
  //   tabBarTheme: TabBarTheme(
  //     indicator: UnderlineTabIndicator(
  //       borderSide: BorderSide(
  //         color: ConstantColors.blueprimary,
  //         width: 2,
  //       ),
  //     ),
  //     labelColor: ConstantColors.blueprimary,
  //     unselectedLabelColor: Colors.white,
  //     labelStyle: TextStyle(
  //       color: ConstantColors.blueprimary,
  //       fontFamily: "poppins",
  //       fontWeight: FontWeight.w700,
  //       fontSize: 15,
  //     ),
  //     unselectedLabelStyle: TextStyle(
  //       color: ConstantColors.blueprimary,
  //       fontFamily: "poppins",
  //       fontWeight: FontWeight.w400,
  //       fontSize: 15,
  //     ),
  //   ),
  //   dialogTheme: DialogTheme(
  //     contentTextStyle: TextStyle(
  //       color: Colors.white,
  //       fontFamily: "poppins",
  //       fontWeight: FontWeight.w400,
  //       fontSize: 20,
  //     ),
  //     titleTextStyle: TextStyle(
  //       color: Colors.white,
  //       fontFamily: "poppins",
  //       fontWeight: FontWeight.w700,
  //       fontSize: 20,
  //     ),
  //   ),
  //   cardTheme: CardTheme(color: Colors.white),
  //   shadowColor: Colors.grey.withOpacity(0.1),
  //   textButtonTheme: TextButtonThemeData(
  //       style: ButtonStyle(
  //     textStyle: MaterialStateProperty.all(
  //       TextStyle(
  //         fontFamily: "poppins",
  //         fontWeight: FontWeight.w500,
  //         color: ConstantColors.blueprimary,
  //         fontSize: 16,
  //       ),
  //     ),
  //   )),
  //   textTheme: TextTheme(
  //     headline1: TextStyle(
  //       fontFamily: "poppins",
  //       fontWeight: FontWeight.bold,
  //       fontSize: 25,
  //       color: Colors.white,
  //     ),
  //     headline2: TextStyle(
  //       fontFamily: "poppins",
  //       fontWeight: FontWeight.bold,
  //       fontSize: 20,
  //       color: Colors.white,
  //     ),
  //     headline6: TextStyle(
  //       fontFamily: "poppins",
  //       fontWeight: FontWeight.bold,
  //       fontSize: 20,
  //       color: Colors.white,
  //     ),
  //     bodyText1: TextStyle(
  //       fontFamily: "poppins",
  //       fontSize: 13,
  //       color: Colors.white,
  //     ),
  //     bodyText2: TextStyle(
  //       fontFamily: "poppins",
  //       color: Colors.white,
  //     ),
  //     subtitle1: TextStyle(
  //       fontFamily: "poppins",
  //       color: Colors.white,
  //     ),
  //   ),
  // );
}

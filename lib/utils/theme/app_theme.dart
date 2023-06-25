import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

mixin AppThemeMixin {
  ThemeData appTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: const Color(0xffffffff),
        primaryColor: ColorPalette.black,

        appBarTheme: const AppBarTheme(
            centerTitle: false,
            elevation: 0,
            color: Color(0xff00574b),
            // systemOverlayStyle: SystemUiOverlayStyle(
            //     statusBarColor: Colors.transparent,
            //     statusBarIconBrightness: Brightness.dark),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600)),
        // primarySwatch: ,
        fontFamily: GoogleFonts.inter().fontFamily,
      );
}

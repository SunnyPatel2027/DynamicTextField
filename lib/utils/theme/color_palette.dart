import 'package:flutter/material.dart';

class ColorPalette {
  //primary color
  static const Color black = Colors.black;
  static const Color lightblack = Color(0xff414141);
  static const Color white = Colors.white;

  //secondary color
  static const Color lightGrey = Color(0xffB5ADAD);
  static const Color semiLightGrey = Color(0xffC5C5C5);
  static const Color lightGrey200 = Color.fromARGB(255, 236, 230, 230);


  static const Color btnBlue = Color(0xff006AB6);
  static const Color btnBorder = Color(0xff50B6FF);

  static const Color textBlue = Color(0xff006AB6);
  static const Color text13Color = Color(0xffC8F0BE);

  // SnackBar Colors
  static const Color warningBgColor = Color(0xffffbb33);
  static const Color warningIconColor = Color(0xffFF8800);
  static const Color dangerBgColor = Color(0xffff4444);
  static const Color dangerIconColor = Color(0xffCC0000);
  static const Color successBgColor = Color(0xff00C851);
  static const Color successIconColor = Color(0xff007E33);
  static const Color infoBgColor = Color(0xff33b5e5);
  static const Color infoIconColor = Color(0xff0099CC);
  static const Color offWhiteColor = Color(0xffFAF9F6);

  //botton color
  static const LinearGradient buttonGradient =
      LinearGradient(colors: [Color(0xff414141), Colors.black]);

  static const LinearGradient addButtonGradient =
      LinearGradient(colors: [Colors.blue, Colors.blue]);

  static const LinearGradient buyButtonGradient =
      LinearGradient(colors: [Colors.green, Colors.green]);

  static const scaffoldColorOnBoard = LinearGradient(
    colors: [Color(0xFF50B6FF), Color(0xFF3784FF)],
    stops: [1, 1],
    begin: AlignmentDirectional(0, -1),
    end: AlignmentDirectional(0, 1),
  );

  static const scaffoldColor = LinearGradient(
    colors: [Color(0xFF4EB3FF), Color(0xFF3987FF)],
    stops: [1, 1],
    begin: AlignmentDirectional(0, -1),
    end: AlignmentDirectional(0, 1),
  );

  //dialog

  static Color textSecondaryColor50 = Color(0xFF1F1F1F).withOpacity(0.5);
  static const Color primaryColor100 = black;
  static const Color accentColor = Color(0X661F1F1F);
}

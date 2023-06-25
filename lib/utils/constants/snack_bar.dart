import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart'; 

import '../utils.dart';

snackBar(context,
    {String? titleText,
    Color? iconColor,
    String? messageText,
    Color? backgroundColor,
    IconData? icon})
     {
  Flushbar(
    flushbarPosition: FlushbarPosition.BOTTOM,
    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
    borderRadius: BorderRadius.circular(10.r),
    padding: const EdgeInsets.all(10),
    backgroundColor: backgroundColor ?? ColorPalette.warningBgColor,
    icon: Icon(icon,size: 35,color: iconColor,),
    duration: const Duration(seconds: 3),
    titleText: Text(
      titleText ?? '',
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
        color: Colors.white,
      ),
    ),
    messageText: Text(
      messageText ?? '',
      style: const TextStyle(
        fontSize: 13.0,
        color: Colors.white,
      ),
    ),
  ).show(context);
}

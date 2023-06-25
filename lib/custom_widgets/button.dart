// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:four_d_app/utils/theme/color_palette.dart';

// class MainButton extends StatelessWidget {
//   final String text;
//   final GestureTapCallback onTap;
//   final double height;
//   final double? width;
//   MainButton(
//       {Key? key,
//       required this.text,
//       required this.onTap,
//       required this.height,
//       this.width})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height.h,
//       width: width,
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//         stops: [0.01, 0.09, 0.7],
//         colors: [
//           ColorPalette.lightblack,
//           Color(0xff2A2A2A),
//           ColorPalette.black,
//         ],
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color? textColor;
  final Gradient? btnColor;
  final double? width;
  final IconData? icon;
  final Color? iconColor;
  final bool? isRotate;
  final bool? isRadius100;
  final Color? normalColor;
  final bool? isBoarder;

  final double? height;
  const AppButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.textColor,
      this.normalColor,
      this.isRadius100,
      this.btnColor,
      this.height,
      this.iconColor,
      this.icon,
      this.isRotate,
      this.width,
      this.isBoarder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: ColorPalette.semiLightGrey,
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          return states.contains(MaterialState.pressed)
              ? ColorPalette.lightGrey
              : null;
        },
      ),
      onTap: onPressed,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? 70.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: isBoarder == true
                ? Border.all(color: ColorPalette.btnBorder, width: 1.5)
                : null,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(100, 100, 111, 0.2),
                offset: Offset(0, 7),
                blurRadius: 29,
                spreadRadius: 0,
              ),
            ],
            color: normalColor ?? Colors.black,
            borderRadius: isRadius100 == true ? radius100 : radius12,
            gradient: normalColor != null
                ? null
                : btnColor ?? ColorPalette.buttonGradient),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == null
                ? const SizedBox()
                : isRotate == true
                    ? Transform.rotate(
                        angle: 360 / 65,
                        child: Icon(
                          icon,
                          color: iconColor,
                          size: 30,
                        ),
                      )
                    : Icon(
                        icon,
                        color: iconColor,
                        size: 30,
                      ),
            icon == null ? const SizedBox() : spacerH10,
            Text(
              text,
              style: textStyle18.copyWith(
                  color: textColor ?? Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

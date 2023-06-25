import 'package:flutter/material.dart';

import '../utils/utils.dart';

class ShowDialogImageView {
  static showDialogImageView(context, design, userId) {
    double width = MediaQuery.of(context).size.width;
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 120.h),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: ColorPalette.black.withOpacity(0.4),
                    offset: const Offset(6, 8),
                    blurRadius: 7.0,
                    spreadRadius: 0)
              ],
            ),
            child: Stack(
              children: [
                InteractiveViewer(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  minScale: 1,
                  maxScale: 6,
                  panEnabled: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image.network(
                      design,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                    top: 240.h,
                    left: width / 3.4,
                    child: Column(
                      children: [
                        Text(
                          "4D Design",
                          style: watermarkText,
                        ),
                        Text(
                          "6556565555",
                          style: watermarkText,
                        ),
                        Text(
                          "DJ55255",
                          style: watermarkText,
                        ),
                        Text(
                          userId.toString(),
                          style: watermarkText,
                        )
                      ],
                    ))
              ],
            ),
          );
        });
      },
    );
  }
}

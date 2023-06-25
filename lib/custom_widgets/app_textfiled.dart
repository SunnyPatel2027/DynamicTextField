import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/utils.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController? textEditingController;

  final ValueChanged<String?>? onChanged;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final TextInputType? keyboardType;

  const AppTextField(
      {Key? key,
      this.inputFormatters,
      this.onChanged,
      this.textEditingController,
      this.validator,
      this.hintText,
      this.keyboardType})
      : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  int height = 40;

  InputBorder getBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: ColorPalette.lightGrey200, width: 0));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
          controller: widget.textEditingController,
          validator: (String? value) {
            if (widget.validator != null) {
              String? data = widget.validator!(value);
              if (data != null) {
                setState(() {
                  height = 65;
                });
              } else {
                if (height == 65) {
                  setState(() {
                    height = 40;
                  });
                }
              }
              return data;
            }

            return null;
          },
          keyboardType: widget.keyboardType,
          inputFormatters: widget.inputFormatters,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              border: getBorder(),
              enabledBorder: getBorder(),
              focusedBorder: getBorder(),
              fillColor: ColorPalette.lightGrey200,
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(fontSize: 16.sp)),
          onChanged: widget.onChanged),
    );
  }
}

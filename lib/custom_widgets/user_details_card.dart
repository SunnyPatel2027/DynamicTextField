import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sunny_gadhiya/custom_widgets/app_textfiled.dart';
import 'package:sunny_gadhiya/models/user_data.dart';

import '../utils/utils.dart';

class UserDetailsCard extends StatelessWidget {
  final bool isAdult;
  final UserData userData;

  const UserDetailsCard(
      {Key? key, required this.isAdult, required this.userData})
      : super(key: key);

  String? nameValidator(String? value) {
    if (value == null || value == '') {
      return "Required";
    } else {
      return null;
    }
  }

  String? ageValidator(String? age) {
    if (age == null || age == '') {
      return "Required";
    } else {
      int ageVal = int.parse(age);
      if (isAdult && ageVal < 18) {
        return "Adult age should be > 18";
      } else if (!isAdult && ageVal >= 18) {
        return "Child age should be < 18";
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isAdult ? "Adult" : "Child",
              style: TextStyle(fontSize: 18.sp),
            ),
            spacerV3,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: AppTextField(
                  validator: nameValidator,
                  textEditingController: userData.nameController,
                  hintText: "Enter Name",
                )),
                spacerH5,
                Expanded(
                    child: AppTextField(
                  validator: ageValidator,
                  textEditingController: userData.ageController,
                  hintText: "Enter Age",
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

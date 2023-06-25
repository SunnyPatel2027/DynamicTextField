import 'package:flutter/material.dart';

import '../models/user_data.dart';
import '../utils/utils.dart';

class RoomDetailsUserData extends StatelessWidget {
  int index;
  UserData? userData;
  RoomDetailsUserData({super.key, required this.index, this.userData});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              (index + 1).toString(),
              style: TextStyle(fontSize: 18.sp),
            ),
            spacerV5,
            Text(
              "Name : ${userData!.nameController.text}",
              style: TextStyle(fontSize: 18.sp),
            ),
            spacerV5,
            Text(
              "Age : ${userData!.ageController.text}",
              style: TextStyle(fontSize: 18.sp),
            ),
          ],
        ),
      ),
    );
  }
}

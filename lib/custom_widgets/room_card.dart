import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sunny_gadhiya/utils/global_data.dart';
import 'package:sunny_gadhiya/models/user_data.dart';
import 'package:sunny_gadhiya/custom_widgets/user_details_card.dart';

import '../utils/utils.dart';
import 'app_textfiled.dart';

class RoomCard extends StatefulWidget {
  late int index;

  RoomCard(this.index, {Key? key}) : super(key: key);

  @override
  State<RoomCard> createState() => _RoomCardState();
}

class _RoomCardState extends State<RoomCard> {
  int adultCount = 0;
  int childCount = 0;

  GlobalKey<FormState> formKey = GlobalKey();
  List<UserData> userDetailsList = [];

  String? numberValidator(String? value) {
    if (value == null || value == '') {
      return "Required";
    } else {
      return null;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    roomsDetails[widget.index] = userDetailsList;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Room ${widget.index + 1}',
              style: TextStyle(fontSize: 18.sp),
            ),
            spacerV5,
            Form(
              key: formKey,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: AppTextField(
                    validator: numberValidator,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                      if (value == '') {
                        adultCount = 0;
                      } else {
                        adultCount = int.parse(value!);
                      }
                    },
                    hintText: "Enter Adult",
                  )),
                  spacerH5,
                  Expanded(
                      child: AppTextField(
                    validator: numberValidator,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                      if (value == '') {
                        childCount = 0;
                      } else {
                        childCount = int.parse(value!);
                      }
                    },
                    hintText: "Enter Child",
                  )),
                  spacerH5,
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        userDetailsList.clear();
                        for (int i = 0; i < adultCount + childCount; i++) {
                          userDetailsList.add(UserData(TextEditingController(),
                              TextEditingController()));
                        }
                        setState(() {});
                      }
                    },
                    child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: const Color(0xff00574b),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "ADD",
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      )),
                    ),
                  )),
                ],
              ),
            ),
            spacerV5,
            Column(
              children: List.generate(adultCount + childCount, (index) {
                return UserDetailsCard(
                  isAdult: index < adultCount,
                  userData: userDetailsList[index],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

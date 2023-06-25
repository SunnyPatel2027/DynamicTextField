import 'package:get/get.dart';

import '../utils/global_data.dart';
import 'package:flutter/material.dart';
import 'package:sunny_gadhiya/custom_widgets/room_card.dart';
import '../utils/utils.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  int selectedRoomNumber = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i = 0; i < 5; i++) {
      roomsDetails.add([]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: mainFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                spacerV50,
                Text(
                  'Room',
                  style: TextStyle(fontSize: 18.sp),
                ),
                spacerV10,
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: ColorPalette.lightGrey200,
                      borderRadius: BorderRadius.circular(5)),
                  child: DropdownButton<int>(
                    isExpanded: true,
                    value: selectedRoomNumber,
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                    hint: const Text("Select Room"),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedRoomNumber = newValue!;
                      });
                    },
                    items: [0, 1, 2, 3, 4, 5]
                        .map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text('${value == 0 ? 'Select Room' : value}'),
                      );
                    }).toList(),
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 30.sp,
                    underline: const SizedBox(),
                  ),
                ),
                spacerV20,
                Column(
                  children: List.generate(selectedRoomNumber, (index) {
                    return RoomCard(index);
                  }),
                ),
                spacerV20,
                GestureDetector(
                  onTap: () {
                    if (selectedRoomNumber == 0) {
                      Get.snackbar("Please, Enter room", "",
                          snackPosition: SnackPosition.BOTTOM);
                    } else if (roomsDetails[0].isEmpty) {
                      Get.snackbar("Please, Enter room details",
                          "You should enter room details.",
                          snackPosition: SnackPosition.BOTTOM);
                    } else if (mainFormKey.currentState!.validate()) {
                      print(roomsDetails[0].length);
                      FocusScope.of(context).unfocus();
                      Get.toNamed(RoutesClass.getRoomDetailsScreenRoute(),
                          arguments: roomsDetails);
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: const Color(0xffd81b60),
                          borderRadius: BorderRadius.circular(3)),
                      child: const Center(
                          child: Text(
                        'SUBMIT',
                        style:
                            TextStyle(fontSize: 14, color: ColorPalette.white),
                      ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../custom_widgets/room_details_card.dart';
import '../models/user_data.dart';
import '../utils/global_data.dart';
import '../utils/utils.dart';

class RoomDetailsScreen extends StatefulWidget {
  const RoomDetailsScreen({super.key});

  @override
  State<RoomDetailsScreen> createState() => _RoomDetailsScreenState();
}

class _RoomDetailsScreenState extends State<RoomDetailsScreen> {
  List<List<UserData>> roomsDetail = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Sunny Test",
          style: TextStyle(color: ColorPalette.white, fontSize: 21.sp),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              roomsDetail[0].isNotEmpty
                  ? RoomDetailsCard(index: 0, userData: roomsDetail[0])
                  : const SizedBox(),
              spacerV5,
              roomsDetail[1].isNotEmpty
                  ? RoomDetailsCard(index: 1, userData: roomsDetail[1])
                  : const SizedBox(),
              spacerV5,
              roomsDetail[2].isNotEmpty
                  ? RoomDetailsCard(index: 2, userData: roomsDetail[2])
                  : const SizedBox(),
              spacerV5,
              roomsDetail[3].isNotEmpty
                  ? RoomDetailsCard(index: 3, userData: roomsDetail[3])
                  : const SizedBox(),
              spacerV5,
              roomsDetail[4].isNotEmpty
                  ? RoomDetailsCard(index: 4, userData: roomsDetail[4])
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

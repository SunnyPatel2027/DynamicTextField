import 'package:flutter/material.dart';
import 'package:sunny_gadhiya/custom_widgets/room_details_user_data.dart';

import '../models/user_data.dart';
import '../utils/utils.dart';

class RoomDetailsCard extends StatefulWidget {
  int index;
  List<UserData>? userData;
  RoomDetailsCard({super.key, required this.index, this.userData});

  @override
  State<RoomDetailsCard> createState() => _RoomDetailsCardState();
}

class _RoomDetailsCardState extends State<RoomDetailsCard> {
  int above18Age = 0;
  int below18Age = 0;

  @override
  void initState() { 
    super.initState();

    for (var item in widget.userData!) {
      int age = int.parse(item.ageController.text);
      if (age >= 18) {
        above18Age++;
      } else {
        below18Age++;
      }
    }
  }

  @override
  Widget build(BuildContext context) { 
    return Card(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Room : ${widget.index + 1}',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            spacerV5,
            Text(
              'Adult : $above18Age',
              style: TextStyle(fontSize: 16.sp),
            ),
            spacerV5,
            Text(
              'Child : $below18Age',
              style: TextStyle(fontSize: 16.sp),
            ),
            spacerV5,
            Column(
              children: List.generate(widget.userData!.length, (index) {
                return RoomDetailsUserData(
                  index: index,
                  userData: widget.userData![index],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:get/get.dart';

import '../../screens/room_details_screen.dart';
import '../../screens/room_screen.dart';

class RoutesClass {
  //room screen
  static String roomScreen = '/';
  static String getRoomScreenRoute() => roomScreen;

  //room details screen
  static String roomDetailsScreen = '/RoomDetailsScreen';
  static String getRoomDetailsScreenRoute() => roomDetailsScreen;

  static List<GetPage> routes = [
    GetPage(name: roomScreen, page: () => const RoomScreen()),
    GetPage(name: roomDetailsScreen, page: () => const RoomDetailsScreen())
  ];
}

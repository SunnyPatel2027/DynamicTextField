import 'package:flutter/cupertino.dart';

class UserData {
  TextEditingController nameController;
  TextEditingController ageController;

  UserData(this.nameController, this.ageController);

  @override
  String toString() {
    // TODO: implement toString

    return "{ name : ${nameController.text} , age : ${ageController.text} } ";
  }
}
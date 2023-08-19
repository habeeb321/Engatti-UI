import 'dart:developer';

import 'package:get/get.dart';

class Broadcastcontroller extends GetxController {
  final RxString selectedSchedule = 'Send Now'.obs;

  updateSchedule(value) {
    selectedSchedule.value = value;
    log(selectedSchedule.value);
  }

  final RxString selectedValue = 'Select'.obs;

  updateValue(newValue) {
    selectedValue.value = newValue;
  }

  final RxString selectedTime = 'Once'.obs;

  updateTime(newValue) {
    selectedTime.value = newValue;
  }

  final RxString selectedMessage = 'Send Message'.obs;

  updateMessage(newValue) {
    selectedMessage.value = newValue;
  }

  final RxString selectedUsers = 'All Users'.obs;

  updateUsers(newValue) {
    selectedUsers.value = newValue;
  }
}

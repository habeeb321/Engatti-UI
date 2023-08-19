import 'package:engatti/controller/broadcast_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BroadCastScreen extends GetView<Broadcastcontroller> {
  const BroadCastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => Broadcastcontroller());
    return Scaffold(
      backgroundColor: const Color(0xff2B2C30),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 400, top: 100),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const Text(
                      'Braodcasts',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
                const Text(
                  'Create New Braodcast',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Braodcasts Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 50,
                  width: Get.width * 0.45,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                    ),
                    onTap: () {},
                    onFieldSubmitted: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Target Channel',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 5),
                Obx(
                  () => Container(
                    width: Get.width * 0.45,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey, // Change the border color as needed
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: DropdownButton<String>(
                            value: controller.selectedValue.value,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 16,
                            style: const TextStyle(
                              color: Colors
                                  .grey, // Change the text color as needed
                              fontSize: 16,
                            ),
                            underline: Container(),
                            onChanged: (String? newValue) {
                              controller.updateValue(newValue);
                            },
                            items: <String>[
                              'Select',
                              'Facebook',
                              'WhatsApp',
                              'Slack'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(value),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Broadcast Type',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 5),
                Obx(
                  () => Container(
                    width: Get.width * 0.45,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey, // Change the border color as needed
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: DropdownButton<String>(
                            value: controller.selectedMessage.value,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 16,
                            style: const TextStyle(
                              color: Colors
                                  .grey, // Change the text color as needed
                              fontSize: 16,
                            ),
                            underline: Container(),
                            onChanged: (String? newValue) {
                              controller.updateMessage(newValue);
                            },
                            items: <String>[
                              'Send Message',
                              'Send message with options',
                              'Triger a path',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(value),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Broadcast Message',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 5),
                Container(
                  width: Get.width * 0.45,
                  height: Get.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5.0),
                    ),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: TextFormField(
                          maxLines: null, // Allows multiple lines of text
                          decoration: const InputDecoration(
                            labelText: 'Enter Message',
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.format_bold),
                            onPressed: () {
                              // Implement bold text formatting here
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.format_italic),
                            onPressed: () {
                              // Implement italic text formatting here
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.format_underlined),
                            onPressed: () {
                              // Implement underline text formatting here
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.format_strikethrough),
                            onPressed: () {
                              // Implement strikethrough text formatting here
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.link),
                            onPressed: () {
                              // Implement adding a link here
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Target Segments',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 5),
                Obx(
                  () => Container(
                    width: Get.width * 0.45,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.grey, // Change the border color as needed
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: DropdownButton<String>(
                            value: controller.selectedUsers.value,
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 16,
                            style: const TextStyle(
                              color: Colors
                                  .grey, // Change the text color as needed
                              fontSize: 16,
                            ),
                            underline: Container(),
                            onChanged: (String? newValue) {
                              controller.updateUsers(newValue);
                            },
                            items: <String>[
                              'All Users',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(value),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Schedule',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 5),
                Obx(
                  () => RadioListTile(
                    title: const Text('Send Now'),
                    value: 'Send Now',
                    groupValue: controller.selectedSchedule.value,
                    onChanged: (value) {
                      controller.updateSchedule(value);
                    },
                  ),
                ),
                Obx(
                  () => RadioListTile(
                    title: const Text('Schedule'),
                    value: 'Schedule',
                    groupValue: controller.selectedSchedule.value,
                    onChanged: (value) {
                      controller.updateSchedule(value);
                    },
                  ),
                ),
                Obx(
                  () => Column(
                    children: [
                      controller.selectedSchedule.value == 'Schedule'
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                const Text(
                                  'Broadcast Repition',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                const SizedBox(height: 5),
                                Obx(
                                  () => Container(
                                    width: Get.width * 0.45,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: Colors
                                            .grey, // Change the border color as needed
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: DropdownButton<String>(
                                            value:
                                                controller.selectedTime.value,
                                            icon: const Icon(
                                                Icons.arrow_drop_down),
                                            iconSize: 24,
                                            elevation: 16,
                                            style: const TextStyle(
                                              color: Colors
                                                  .grey, // Change the text color as needed
                                              fontSize: 16,
                                            ),
                                            underline: Container(),
                                            onChanged: (String? newValue) {
                                              controller.updateTime(newValue);
                                            },
                                            items: <String>[
                                              'Once',
                                              'Daily',
                                              'Weekly',
                                              'Monthly'
                                            ].map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(value),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Date',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: 50,
                                  width: Get.width * 0.45,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Enter Date',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    onTap: () {},
                                    onFieldSubmitted: (value) {},
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Time',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  height: 50,
                                  width: Get.width * 0.45,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Enter Time',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    onTap: () {},
                                    onFieldSubmitted: (value) {},
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.05),
                const Divider(),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const BroadCastScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffAD1536),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Text(
                          'Schedule Broadcast',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const BroadCastScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffC3C3C3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Text(
                          'Save Draft',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

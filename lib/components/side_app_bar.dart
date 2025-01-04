import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/date_item.dart';
import 'package:letsdo/components/main_page_links.dart';
import 'package:letsdo/theme_data.dart';
import '../controllers/side_appBar_controller.dart';

class SideAppBar extends StatelessWidget {
  SideAppBar({super.key}) {
    Get.put(SideAppBarController()); // Initialize the controller here
  }

  final SideAppBarController controller = Get.find<SideAppBarController>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Obx(() => Container(
      width: screenWidth * 0.2,
      height: screenHeight,
      color: quaternaryColor,
      child: Column(
        children: <Widget>[
          SizedBox(height: screenHeight * 0.05),
          const Icon(
            Icons.settings,
            color: textColor,
            size: 30,
          ),
          const SizedBox(height: 20),

          // Conditionally show date buttons
          if (controller.page.value == "Schedule" ||
              controller.page.value == "Create") ...[
            GestureDetector(
                onTap: () {
                  controller.updateSelectedDay("Monday");
                },
                child: DateItem(
                    day: "M",
                    isSelected: controller.date.value == "Monday")),
            GestureDetector(
                onTap: () {
                  controller.updateSelectedDay("Tuesday");
                },
                child: DateItem(
                    day: "T",
                    isSelected: controller.date.value == "Tuesday")),
            GestureDetector(
                onTap: () {
                  controller.updateSelectedDay("Wednesday");
                },
                child: DateItem(
                    day: "W",
                    isSelected: controller.date.value == "Wednesday")),
            GestureDetector(
                onTap: () {
                  controller.updateSelectedDay("Thursday");
                },
                child: DateItem(
                    day: "T",
                    isSelected: controller.date.value == "Thursday")),
            GestureDetector(
                onTap: () {
                  controller.updateSelectedDay("Friday");
                },
                child: DateItem(
                    day: "F",
                    isSelected: controller.date.value == "Friday")),
            GestureDetector(
                onTap: () {
                  controller.updateSelectedDay("Saturday");
                },
                child: DateItem(
                    day: "S",
                    isSelected: controller.date.value == "Saturday")),
            GestureDetector(
                onTap: () {
                  controller.updateSelectedDay("Sunday");
                },
                child: DateItem(
                    day: "S",
                    isSelected: controller.date.value == "Sunday")),
          ],

          SizedBox(height: screenHeight * 0.1),

          // Main icons with GetX
          GestureDetector(
              onTap: () {
                controller.updateSelectedPage("Dashboard");
              },
              child: MainPageLinks(
                isActive: controller.page.value == "Dashboard",
                icon: const Icon(Icons.dashboard),
              )),
          GestureDetector(
              onTap: () {
                controller.updateSelectedPage("Schedule");
              },
              child: MainPageLinks(
                isActive: controller.page.value == "Schedule",
                icon: const Icon(Icons.calendar_today),
              )),
          GestureDetector(
              onTap: () {
                controller.updateSelectedPage("Create");
              },
              child: MainPageLinks(
                isActive: controller.page.value == "Create",
                icon: const Icon(Icons.add),
              )),
        ],
      ),
    ));
  }
}

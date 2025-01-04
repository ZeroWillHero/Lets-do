import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/app_form_btn.dart';
import 'package:letsdo/components/edit_shedule.dart';
import 'package:letsdo/theme_data.dart';

class SheduleCard extends StatelessWidget {
  final String title;
  final String startTime;
  final String weather;
  final String endTime;
  final Icon icon;

  const SheduleCard(
      {super.key,
      required this.title,
      required this.startTime,
      required this.weather,
      required this.endTime,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
        width: screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: teritaryColor, width: 2),
        ),
        child:  Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        
          child: Column(
           
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    child: Text(title,
                        style: const TextStyle(
                            fontSize: 12,
                            color: textColor,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text("${startTime}AM -$endTime PM",
                      style: const TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  icon,
                  Text(weather,
                      style: const TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => {
                          // Add your code here
                            Get.dialog(
                            const ScheduleEditPopup(),
                            )
                        },
                        child: const Icon(
                          Icons.edit,
                           color: textColor,
                            size: 20
                            )),
                      const SizedBox(width: 10),
                      const Icon(Icons.delete, color: textColor, size: 20),
                    ],
                  ),
                  FormBtn(
                    title: "Set as Done",
                    onPressed: () {
                      Get.dialog(
                        AlertDialog(
                          title: const Text("Confirm Action"),
                          content: const Text("Are you sure you want to mark this as done?"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Get.back(); // Close the dialog
                              },
                              child: const Text("Cancel"),
                            ),
                            TextButton(
                              onPressed: () {
                                // update as Done
                                Get.back(); // Close the dialog
                                // Add your "Set as Done" logic here
                                print("Marked as Done");
                              },
                              child: const Text(
                                "Set as Done",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10)
                ],
                
              ),
              
            ],
          ),
        ));
  }
}

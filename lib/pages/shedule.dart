import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/shedule_card.dart';
import 'package:letsdo/theme_data.dart';
import '../controllers/side_appBar_controller.dart';

class Shedule extends StatelessWidget {
  Shedule({super.key}){
    Get.put(SideAppBarController());
  }
  final SideAppBarController controller = Get.find<SideAppBarController>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    

    return Padding(
      padding: EdgeInsets.fromLTRB(20, screenHeight * 0.1, 20, 20),
      child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.calendar_today, color: textColor, size: 30),
                  SizedBox(width:5),
                  Text('Schedule',
                      style: TextStyle(fontSize: 30, color: textColor)),
                ],
              ),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Obx(() => Text(
                    controller.date.value,
                    style: const TextStyle(
                        fontSize: 25,
                        color: textColor,
                        fontWeight: FontWeight.bold),
                  )),
                  const Text("Date : 12/12/2021",
                      style: TextStyle(
                          fontSize: 15,
                          color: textColor,
                          fontWeight: FontWeight.bold)),
                ],
              ),

              const SizedBox(height: 20),

              // fetch Shedules as Date and the time and day (eg:- "Monday")
              // filter according to the selected date
              const SheduleCard(
                title: 'Meeting with client',
                startTime: '08:00',
                weather: 'Sunny',
                endTime: '10:00',
                icon: Icon(Icons.sunny, color: textColor, size: 20),
              ),
            ],
          ),
          ),
    );
  }
}

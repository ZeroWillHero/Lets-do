import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/add_task_card.dart';
import 'package:letsdo/components/set_date_time.dart';
import 'package:letsdo/controllers/side_appBar_controller.dart';
import 'package:letsdo/theme_data.dart';

class Create extends StatelessWidget {
  Create({super.key}){
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.add, color: textColor, size: 30),
                  SizedBox(width:5),
                  Text('Create',
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
      
              // create page items 
              const SetDateTimeCard(),
              const AddTaskCard(),
              
              
              
            ],
          ),
          ),
    );
  }
}
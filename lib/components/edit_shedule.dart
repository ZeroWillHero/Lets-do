import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/theme_data.dart';

class ScheduleEditPopup extends StatelessWidget {
  const ScheduleEditPopup({super.key});


  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: backgroundColor,
            title:
                const Text('Edit Schedule', style: TextStyle(color: textColor)),
            content: Column(
              children: <Widget>[
                TextField(
                  style: const TextStyle(color: textColor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Title',
                    labelStyle: const TextStyle(color: textColor),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: teritaryColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  style: const TextStyle(color: textColor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Start Time',
                    labelStyle: const TextStyle(color: textColor),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: teritaryColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  style: const TextStyle(color: textColor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'End Time',
                    labelStyle: const TextStyle(color: textColor),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: teritaryColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLines: 3,
                  style: const TextStyle(color: textColor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'description',
                    labelStyle: const TextStyle(color: textColor),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: teritaryColor),
                    ),
                  ),
                ),

                Row(
                  children: [
                    const Text("Mark if it is Done",style: TextStyle(color: textColor),),
                    Checkbox(
                      fillColor: WidgetStateProperty.all(Colors.white),
                      checkColor: teritaryColor,
                      value: false, onChanged: (value){
                        print(value);
                              
                    }),
                  ],
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Save'),
              ),
            ],
          );
        },
      );
    });
    return Container();
  }
}

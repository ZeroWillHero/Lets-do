import 'package:flutter/material.dart';
import 'package:letsdo/components/app_form_btn.dart';
import 'package:letsdo/theme_data.dart';
import 'package:letsdo/controllers/task_form_controller.dart';

class CreateTaskFrom extends StatelessWidget {
  const CreateTaskFrom({super.key});

  @override
  Widget build(BuildContext context) {
    final TaskFormController controller = TaskFormController();

    final screenHeight = MediaQuery.of(context).size.height;
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          style: const TextStyle(fontSize: 16.0, color: textColor),
          decoration: InputDecoration(
            labelStyle: const TextStyle(color: textColor),
            labelText: 'Task Name',
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: teritaryColor),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: teritaryColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: teritaryColor),
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
        SizedBox(
          height: 100,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Task Description',
              labelStyle: const TextStyle(color: textColor),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: teritaryColor),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: teritaryColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: teritaryColor),
              ),
            ),
            style: const TextStyle(fontSize: 16.0, color: textColor),
            maxLines: 50000,
            minLines: 100, // Allows the text field to grow dynamically
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
        DropdownButtonFormField(
          style: const TextStyle(fontSize: 16.0, color: textColor),
          items: const [
            DropdownMenuItem(value: 'Work', child: Text('Work')),
            DropdownMenuItem(value: 'Personal', child: Text('Personal')),
            DropdownMenuItem(value: 'Other', child: Text('Other')),
          ],
          onChanged: (newValue) => {
            controller.setType(newValue!),
          },
          decoration: InputDecoration(
            labelText: 'Type',
            labelStyle: const TextStyle(color: textColor),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: teritaryColor),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: teritaryColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: teritaryColor),
            ),
          ),
        ),

        SizedBox(height: screenHeight * 0.02),
        
        FormBtn(title: 'Create Task' ,onPressed: () {},),
      ],
    ));
  }
}

import 'package:get/get.dart';

class TaskFormController extends GetxController {
  final taskName = ''.obs;
  final taskDescription = ''.obs;
  final startTime = ''.obs;
  final endTime = ''.obs;
  final type = 'select a type'.obs;
  final phoneProfile = ''.obs;


  void setTaskName(String value) => taskName.value = value;
  void setTaskDescription(String value) => taskDescription.value = value;
  void setStartTime(String value) => startTime.value = value;
  void setEndTime(String value) => endTime.value = value;
  void setType(String value) => type.value = value;
  void setPhoneProfile(String value) => phoneProfile.value = value;

  void clearForm() {
    taskName.value = '';
    taskDescription.value = '';
    startTime.value = '';
    endTime.value = '';
    type.value = '';
    phoneProfile.value = '';
  }
}
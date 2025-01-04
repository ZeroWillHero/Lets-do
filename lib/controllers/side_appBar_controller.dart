import 'package:get/get.dart';

class SideAppBarController extends GetxController {
  var date = "Monday".obs; // To store the selected day
  var page = "Dashboard".obs; // To store the selected page

  // Method to update the selected day
  void updateSelectedDay(String day) {
    date.value = day;
  }

  // Method to update the selected page
  void updateSelectedPage(String newPage) {
    page.value = newPage;
  }
}

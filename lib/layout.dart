import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/side_app_bar.dart';
import 'package:letsdo/pages/create.dart';
import 'package:letsdo/pages/dashboard.dart';
import 'package:letsdo/theme_data.dart';
import 'package:letsdo/controllers/side_appBar_controller.dart';
import 'pages/shedule.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: true, // Let the screen resize when keyboard appears
      body: Row(
        children: [
          SideAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Obx(() {
                switch (Get.find<SideAppBarController>().page.value) {
                  case 'Dashboard':
                    return const Dashboard();

                  case 'Schedule':
                    return Shedule();

                  case 'Create':
                    return Create();
                // Add more cases for other pages
                  default:
                    return const Center(child: Text('Page not found'));
                }
              }),
            ),
          ),
        ],
      ),
    );
  }
}

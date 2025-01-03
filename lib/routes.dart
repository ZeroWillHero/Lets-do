import 'package:get/get.dart';
import 'package:letsdo/pages/home_view.dart';
import 'package:letsdo/pages/login.dart';

final routes = [
      GetPage(name: '/', page: () => const Homeview()),
      GetPage(name: '/login' , page: () => const Login()),

];
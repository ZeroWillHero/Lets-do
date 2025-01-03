import 'package:get/get.dart';
import 'package:letsdo/pages/home_view.dart';
import 'package:letsdo/pages/login.dart';
import 'package:letsdo/pages/register.dart';

final routes = [
      GetPage(name: '/', page: () => const Homeview()),
      GetPage(name: '/login' , page: () => const Login()),
      GetPage(name: '/register' , page: () => const Register()),
];
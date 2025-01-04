import 'package:get/get.dart';
import 'package:letsdo/layout.dart';
import 'package:letsdo/pages/home_view.dart';
import 'package:letsdo/pages/login.dart';
import 'package:letsdo/pages/register.dart';
import 'package:letsdo/pages/verify.dart';

final routes = [
      GetPage(name: '/', page: () => const Homeview()),
      GetPage(name: '/login' , page: () => const Login()),
      GetPage(name: '/register' , page: () => const Register()),
      GetPage(name: '/dashboard', page: () => const Layout()),
      GetPage(name: '/verify', page: () => const Verify()),

      
];
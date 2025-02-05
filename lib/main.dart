import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/controllers/side_appBar_controller.dart';
import 'package:letsdo/routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xnxaspmzcucuaajlrjgu.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhueGFzcG16Y3VjdWFhamxyamd1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzU4OTI5NjMsImV4cCI6MjA1MTQ2ODk2M30.auY2BIoJCUR4Xy1w6a1-8iRoxd5bn2CXM16vhVAy2Wo',
  );
  
  Get.put(SideAppBarController()); // Initialize the controller here
  runApp( const LetsDo());
}
class LetsDo extends StatefulWidget {
  const LetsDo({super.key});

  @override
  State<LetsDo> createState() => _LetsDoState();
}
class _LetsDoState extends State<LetsDo> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "LetsDo",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: routes,
    );
  }
}



 
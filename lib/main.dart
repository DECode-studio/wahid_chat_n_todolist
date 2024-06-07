import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wahid_chat_n_todolist/controller/service/core_app_controller.dart';
import 'package:wahid_chat_n_todolist/service/config/supabase.dart';
import 'package:wahid_chat_n_todolist/service/function/scroll.dart';
import 'package:wahid_chat_n_todolist/service/router/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);

  runApp(const MenuKitaApp());
}

class MenuKitaApp extends StatelessWidget {
  const MenuKitaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CoreAppController>(
      init: CoreAppController(),
      builder: (controller) => GetMaterialApp(
        title: 'Chat n ToDoList',
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        initialRoute: '/',
        getPages: appRoutes,
      ),
    );
  }
}

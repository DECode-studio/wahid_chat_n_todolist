import 'package:get/get.dart';
import 'package:wahid_chat_n_todolist/page/main.dart';

var appRoutes = <GetPage<dynamic>>[
  GetPage(
    name: '/',
    page: () => const MainPage(),
    transition: Transition.fadeIn,
  ),
];

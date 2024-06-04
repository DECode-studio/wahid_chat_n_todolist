import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wahid_chat_n_todolist/widgets/load/load.dart';

loadModal() => Get.dialog(
      barrierDismissible: false,
      const AlertDialog(
        elevation: 0,
        contentPadding: EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        content: _modalLoad(),
      ),
    );

class _modalLoad extends StatelessWidget {
  const _modalLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: spinLoad(),
    );
  }
}

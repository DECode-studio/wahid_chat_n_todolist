// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'widgets/screen.dart';

// void scanModal({
//   Function(dynamic)? func,
// }) =>
//     Get.dialog(
//       barrierDismissible: false,
//       AlertDialog(
//         contentPadding: const EdgeInsets.all(0),
//         shape: BeveledRectangleBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         content: ClipRRect(
//           borderRadius: BorderRadius.circular(20),
//           child: SizedBox(
//             width: 400,
//             height: Get.height * 0.9,
//             child: _modalBody(
//               func: func,
//             ),
//           ),
//         ),
//       ),
//     );

// class _modalBody extends StatelessWidget {
//   final Function(dynamic)? func;
//   const _modalBody({this.func, super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     return GetBuilder<ImageAppController>(
//       init: ImageAppController(func: func),
//       builder: (controller) => Scaffold(
//         body: screenModal(controller, size),
//       ),
//     );
//   }
// }

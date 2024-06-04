// import 'package:flutter/material.dart';
// import 'package:setara_trans/controller/service/image_app_controller.dart';
// import 'package:setara_trans/service/router/navigator.dart';
// import 'package:setara_trans/style/color.dart';
// import 'package:phosphor_flutter/phosphor_flutter.dart';

// import 'scan.dart';

// Widget screenModal(
//   ImageAppController controller,
//   Size size,
// ) =>
//     Stack(
//       children: [
//         scanScreen(controller, size),
//         _exitButton(controller),
//       ],
//     );

// Align _exitButton(
//   ImageAppController controller,
// ) =>
//     Align(
//       alignment: Alignment.topLeft,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: CircleAvatar(
//           backgroundColor: mainColor_1,
//           child: IconButton(
//             onPressed: Navigate().back,
//             icon: Icon(
//               PhosphorIconsDuotone.x,
//               color: white,
//             ),
//           ),
//         ),
//       ),
//     );

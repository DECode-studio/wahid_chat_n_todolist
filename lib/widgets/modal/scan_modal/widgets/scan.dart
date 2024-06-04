// import 'package:flutter/material.dart';
// import 'package:setara_trans/controller/service/image_app_controller.dart';
// import 'package:setara_trans/widgets/square/scan_square.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// Widget scanScreen(
//   ImageAppController controller,
//   Size size,
// ) =>
//     Stack(
//       children: [
//         Container(
//           color: Colors.black26,
//           width: 400,
//           height: size.height * 0.9,
//           child: QRView(
//             onPermissionSet: (_, value) => controller.accepted.value = value,
//             key: controller.qrKey,
//             onQRViewCreated: controller.onParamResult,
//           ),
//         ),
//         _squareScan(),
//       ],
//     );

// Widget _squareScan() => Center(
//       child: CustomPaint(
//         painter: BorderPainter(),
//         child: SizedBox(
//           width: BarReaderSize.width,
//           height: BarReaderSize.height,
//         ),
//       ),
//     );

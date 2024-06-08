import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/chat_page_controller.dart';
import 'package:wahid_chat_n_todolist/model/chat.dart';
import 'package:wahid_chat_n_todolist/service/function/delay.dart';
import 'package:wahid_chat_n_todolist/style/box.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget reffChat(
  ChatPageController controller,
  Size size,
) =>
    Align(
      alignment: Alignment.bottomCenter,
      child: controller.reffChat.value == ''
          ? Container()
          : Container(
              width: size.width,
              height: 70,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration:
                  customRoundedShadowStyle(color: gray_2.withAlpha(200)),
              child: FutureBuilder(
                future: syncDelay(value: 100),
                builder: (_, snapshot) =>
                    snapshot.connectionState == ConnectionState.waiting
                        ? Container()
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Replying to ${controller.listUser.where((e) => e.idUser == controller.replyChat().idSender).first.nameUser == 'Admin' ? 'You' : controller.listUser.where((e) => e.idUser == controller.replyChat().idSender).first.nameUser}',
                                style: bold_12_1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                controller.replyChat().dataChat ?? '',
                                style: normal_12_1,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              )
                            ],
                          ),
              ),
            ),
    );

Widget reffChatBaloon(
  ChatPageController controller,
  ChatModel data,
  Size size,
) =>
    data.reffChat == null
        ? Container()
        : Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 5),
            decoration: customRoundedShadowStyle(color: gray_2.withAlpha(200)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Replying to ${controller.listUser.where((e) => e.idUser == controller.replyChat(idReff: data.reffChat).idSender).first.nameUser == 'Admin' ? 'You' : controller.listUser.where((e) => e.idUser == controller.replyChat(idReff: data.reffChat).idSender).first.nameUser}',
                  style: bold_12_1,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  controller.replyChat(idReff: data.reffChat).dataChat ?? '',
                  style: normal_12_1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )
              ],
            ),
          );

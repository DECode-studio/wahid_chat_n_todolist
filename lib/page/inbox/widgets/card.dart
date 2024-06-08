import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:wahid_chat_n_todolist/controller/page/inbox_page_controller.dart';
import 'package:wahid_chat_n_todolist/model/room.dart';
import 'package:wahid_chat_n_todolist/service/formater/date.dart';
import 'package:wahid_chat_n_todolist/style/color.dart';
import 'package:wahid_chat_n_todolist/style/text.dart';

Widget cardData(
  InboxPageController controller,
  RoomModel data,
  Size size,
) =>
    GestureDetector(
      onTap: () => controller.controller!.chooseData(data.idRoom!),
      child: Container(
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _cardImage(data.nameRoom != ''),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          controller.chatParticipant(data),
                          style: normal_15_4,
                        ),
                      ),
                      Text(
                        dateDayTimeFormater(data.createRoom ?? DateTime.now()),
                        style: normal_10_1,
                      )
                    ],
                  ),
                  _lastChat(
                    controller,
                    data,
                    size,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget _cardImage(
  bool group,
) =>
    SizedBox(
      width: 50,
      child: group
          ? Stack(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: gray_2,
                  child: Icon(
                    FluentIcons.person_48_filled,
                    color: mainColor_1,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: mainColor_1,
                    child: Icon(
                      FluentIcons.person_48_filled,
                      color: white,
                    ),
                  ),
                ),
              ],
            )
          : CircleAvatar(
              radius: 18,
              backgroundColor: mainColor_1,
              child: Icon(
                FluentIcons.person_48_filled,
                color: white,
              ),
            ),
    );

Widget _lastChat(
  InboxPageController controller,
  RoomModel data,
  Size size,
) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          controller.listUser
                      .where(
                          (e) => e.idUser == controller.lasChat(data).idSender)
                      .first
                      .nameUser ==
                  'Admin'
              ? 'You'
              : controller.listUser
                      .where(
                          (e) => e.idUser == controller.lasChat(data).idSender)
                      .first
                      .nameUser ??
                  '',
          style: bold_12_1,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          controller.lasChat(data).dataChat ?? '',
          style: normal_12_1,
        ),
      ],
    );

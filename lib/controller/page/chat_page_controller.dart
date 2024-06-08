import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';
import 'package:uuid/uuid.dart';
import 'package:wahid_chat_n_todolist/controller/data/local/chat.dart';
import 'package:wahid_chat_n_todolist/controller/data/local/inbox.dart';
import 'package:wahid_chat_n_todolist/controller/data/local/participant.dart';
import 'package:wahid_chat_n_todolist/controller/data/local/user.dart';
import 'package:wahid_chat_n_todolist/controller/page/main_page_controller.dart';
import 'package:wahid_chat_n_todolist/model/chat.dart';
import 'package:wahid_chat_n_todolist/model/participant.dart';
import 'package:wahid_chat_n_todolist/model/room.dart';
import 'package:wahid_chat_n_todolist/model/user.dart';
import 'package:wahid_chat_n_todolist/service/function/delay.dart';

class ChatPageController extends GetxController {
  final MainPageController? controller;
  ChatPageController({this.controller});
  final scrollController = GroupedItemScrollController();

  var roomData = RoomModel().obs;
  var listChat = <ChatModel>[].obs;
  var listParticipant = <ParticipantModel>[].obs;
  var listUser = <UserModel>[].obs;

  var txt_chat = TextEditingController();
  var reffChat = ''.obs;

  var loadData = true.obs;
  var loadShow = false.obs;

  @override
  void onInit() {
    super.onInit();

    getData();
  }

  void getData() async {
    loadData.value = true;

    roomData.value = inboxLocalData
        .where((e) => e.idRoom == controller?.detailWindow.value)
        .first;

    listChat.value = chatLocalData
        .where((e) => e.idRoom == controller?.detailWindow.value)
        .toList();
    listChat.sort((a, b) => a.createChat!.compareTo(b.createChat!));

    listParticipant.value = participantLocalData
        .where((e) => e.idRoom == controller?.detailWindow.value)
        .toList();

    listUser.value = userLocalData;
    listUser.sort((a, b) => a.createUser!.compareTo(b.createUser!));

    await syncDelay(value: 2000);
    loadData.value = false;

    asyncDelay(
      value: 500,
      func: () => scrollController.jumpTo(index: listChat.length - 1),
    );
  }

  void actionMethod(
    String mode, {
    dynamic data,
  }) {
    if (mode == 'back') {
      controller?.detailWindow.value = '';
    }

    if (mode == 'exit') {
      controller?.viewWindow.value = '';
      controller?.detailWindow.value = '';
    }

    if (mode == 'reply') {
      reffChat.value = data.toString();
    }

    if (mode == 'send') {
      var chat = ChatModel(
        idChat: const Uuid().v4(),
        idRoom: roomData.value.idRoom,
        idSender: '1',
        reffChat: reffChat.value == '' ? null : reffChat.value,
        dataChat: txt_chat.text,
        createChat: DateTime.now(),
        statusChat: true,
      );

      listChat.add(chat);
      chatLocalData.add(chat);

      txt_chat.text = '';
      reffChat.value = '';
      scrollController.jumpTo(index: listChat.length - 1);

      loadData.value = true;
      loadData.value = false;
      loadShow.value = true;

      asyncDelay(
        value: 2000,
        func: () {
          var chat = ChatModel(
            idChat: const Uuid().v4(),
            idRoom: roomData.value.idRoom,
            idSender:
                listParticipant.where((e) => e.idUser != '1').first.idUser,
            dataChat: 'Excuse me, is there anything I can help you with?',
            createChat: DateTime.now(),
            statusChat: true,
          );

          listChat.add(chat);
          chatLocalData.add(chat);
          scrollController.jumpTo(index: listChat.length - 1);

          loadShow.value = false;
          loadData.value = true;
          loadData.value = false;
        },
      );
    }
  }

  String chatParticipant(
    RoomModel data,
  ) {
    if (data.nameRoom != '') {
      return data.nameRoom ?? '';
    } else {
      var party = listParticipant
          .where((e) => e.idRoom == data.idRoom && e.idUser != '1')
          .first;

      var user = listUser.where((e) => e.idUser == party.idUser).first;

      return user.nameUser ?? '';
    }
  }

  ChatModel replyChat({String? idReff}) {
    var chat =
        listChat.where((e) => e.idChat == (idReff ?? reffChat.value)).first;
    return chat;
  }
}

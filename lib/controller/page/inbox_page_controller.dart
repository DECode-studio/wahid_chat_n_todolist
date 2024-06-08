import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

class InboxPageController extends GetxController {
  final MainPageController? controller;
  InboxPageController({this.controller});

  var txt_search = TextEditingController();

  var listInbox = <RoomModel>[].obs;
  var listChat = <ChatModel>[].obs;
  var listParticipant = <ParticipantModel>[].obs;
  var listUser = <UserModel>[].obs;

  var searchData = ''.obs;
  var loadData = true.obs;

  @override
  void onInit() {
    super.onInit();

    getData();
  }

  void getData() async {
    loadData.value = true;

    listInbox.value = inboxLocalData;
    listInbox.sort((a, b) => b.createRoom!.compareTo(a.createRoom!));

    listChat.value = chatLocalData;
    listChat.sort((a, b) => a.createChat!.compareTo(b.createChat!));

    listParticipant.value = participantLocalData;

    listUser.value = userLocalData;
    listUser.sort((a, b) => a.createUser!.compareTo(b.createUser!));

    await syncDelay(value: 2000);
    loadData.value = false;
  }

  void setFilter({
    required String mode,
  }) {
    if (mode == 'search') {
      searchData.value = txt_search.text;
    }
  }

  List<RoomModel> inboxData() {
    var data = listInbox;

    if (searchData.value != '') {
      data = data
          .where((e) =>
              e.nameRoom.toString().toLowerCase() ==
                  searchData.value.toLowerCase() ||
              e.nameRoom
                  .toString()
                  .toLowerCase()
                  .contains(searchData.value.toLowerCase()) ||
              chatParticipant(e).toLowerCase() ==
                  searchData.value.toLowerCase() ||
              chatParticipant(e)
                  .toLowerCase()
                  .contains(searchData.value.toLowerCase()))
          .toList()
          .obs;
    }

    return data;
  }

  ChatModel lasChat(
    RoomModel data,
  ) {
    var chat = chatLocalData.where((e) => e.idRoom == data.idRoom).toList();

    return chat.last;
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
}

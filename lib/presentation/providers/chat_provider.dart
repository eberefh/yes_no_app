import 'package:flutter/material.dart';
import 'package:yes_no_app/config/themes/helpers/get_yes_no_answer.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScroolControler = ScrollController();
  final GetYesNoAnwer getYesNoAnwer = GetYesNoAnwer();

  List<Message> messageList = [];

  Future<void> sendMessages(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      herReplay();
    }

    notifyListeners();
    moveScrollToBotton();
  }

  Future<void> herReplay() async {
    final herMessager = await getYesNoAnwer.getANwer();

    messageList.add(herMessager);
    notifyListeners();
    moveScrollToBotton();
  }

  Future<void> moveScrollToBotton() async {
    await Future.delayed(
      const Duration(milliseconds: 100),
    );
    chatScroolControler.animateTo(
      chatScroolControler.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}

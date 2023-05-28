import 'package:flutter/material.dart';
import 'package:vizier/ui/pages/chatbot/ChatGPT_flutter/lib/main_chatbot.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({Key? key}) : super(key: key);

  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  TextEditingController _messageController = TextEditingController();
  List<String> _chatMessages = [];

  void _addMessage(String message) {
    setState(() {
      _chatMessages.add(message);
    });
  }

  void _sendMessage() {
    String message = _messageController.text.trim();
    _messageController.clear();
    _addMessage(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbot'),
      ),
      body: MyAppBot(),
    );
  }
}

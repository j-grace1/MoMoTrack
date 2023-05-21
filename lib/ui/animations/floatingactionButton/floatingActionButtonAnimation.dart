import 'package:flutter/material.dart';
import 'package:vizier/ui/pages/home/home_page.dart';
import 'package:vizier/ui/pages/chatbot/chatbot.dart';

class AnimatedFloatingActionButton extends StatefulWidget {
  @override
  _AnimatedFloatingActionButtonState createState() =>
      _AnimatedFloatingActionButtonState();
}

class _AnimatedFloatingActionButtonState
    extends State<AnimatedFloatingActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      alignment: Alignment(0.0, _controller.value - 0.5),
      duration: Duration(milliseconds: 500),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatbotPage()),
          );
        },
        child: Icon(Icons.question_mark_rounded),
        backgroundColor: Colors.black,
        elevation: 2.0,
        shape: CircleBorder(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

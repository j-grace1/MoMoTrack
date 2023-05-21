import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/cubits/goals/goals_cubit.dart';
import 'package:vizier/cubits/retirement_plan/retirement_plan_cubit.dart';
import 'package:vizier/cubits/user/user_cubit.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_factory.dart';
import 'package:vizier/ui/pages/home/home_tab_item.dart';
import 'package:vizier/ui/pages/home/widgets/home_app_bar.dart';
import 'package:vizier/ui/pages/home/widgets/home_tab_bar.dart';
import 'package:vizier/ui/pages/profile/profile_page.dart';
import 'package:vizier/ui/pages/notifications/notifications.dart';
import 'package:vizier/ui/pages/chatbot/chatbot.dart';

class CustomFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatbotPage()),
        );
      },
      child: Icon(Icons.question_mark_rounded),
      backgroundColor: Colors.black,
      shape: CircleBorder(),
    );
  }
}

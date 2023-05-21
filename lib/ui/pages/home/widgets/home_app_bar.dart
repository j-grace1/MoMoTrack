import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/data/models/user/user_model.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';

class HomeAppBar extends StatelessWidget {
  final UserModel? userModel;
  final VoidCallback onAlertsPressed;
  final VoidCallback onProfilePressed;
  final VoidCallback onMorePressed;

  const HomeAppBar({
    required this.userModel,
    required this.onAlertsPressed,
    required this.onProfilePressed,
    required this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'WalletMate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: AppColors.black,
            ),
            onPressed: onAlertsPressed,
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundColor: AppColors.white,
              backgroundImage: userModel?.avatar != null
                  ? AssetImage(userModel!.avatar!)
                  : null,
              radius: 20.0,
            ),
            onPressed: onProfilePressed,
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
            onPressed: onMorePressed,
          ),
        ],
      ),
    );
  }
}

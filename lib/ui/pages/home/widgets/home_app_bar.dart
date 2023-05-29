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
    return SliverAppBar(
      expandedHeight: 56.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        title: Text(
          'WalletMate',
          style: TextStyle(
            color: Colors.purple.shade900,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      actions: [
        _buildAlertsButton(
          onPressed: onAlertsPressed,
        ),
        _buildMoreButton(
          onPressed: () {
            // TODO: Implement more button onPressed
          },
        ),
      ],
      leading: _buildProfileButton(
        avatar: userModel?.avatar,
        onPressed: onProfilePressed,
      ),
    );
  }

  Widget _buildNotificationsButton({
    required VoidCallback onPressed,
  }) {
    return IconButton(
      icon: Icon(
        Icons.notifications,
        color: AppColors.black,
      ),
      onPressed: onPressed,
    );
  }

  Widget _buildMoreButton({
    required VoidCallback onPressed,
  }) {
    return IconButton(
      icon: Icon(
        Icons.more_vert,
        color: AppColors.black,
      ),
      onPressed: onPressed,
    );
  }

  Widget _buildAlertsButton({
    required VoidCallback onPressed,
  }) {
    return AspectRatio(
      aspectRatio: 1,
      child: AdaptiveButton(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: const Icon(
          //TODO (MT): Change icon
          Icons.notifications,
          color: AppColors.black,
        ),
      ),
    );
  }

  Widget _buildProfileButton({
    required String? avatar,
    required VoidCallback onPressed,
  }) {
    return AspectRatio(
      aspectRatio: 1,
      child: AdaptiveButton(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: avatar != null
            ? CircleAvatar(
                backgroundColor: AppColors.white,
                backgroundImage: AssetImage(avatar),
                radius: 20.0,
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}

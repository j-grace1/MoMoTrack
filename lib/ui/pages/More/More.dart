import 'package:flutter/material.dart';

class MoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() onTapSettings;
  final void Function() onTapLogout;

  const MoreAppBar({
    required this.onTapSettings,
    required this.onTapLogout,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('More'),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: onTapSettings,
        ),
        IconButton(
          icon: Icon(Icons.logout),
          onPressed: onTapLogout,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  final GlobalKey _menuKey = GlobalKey();

  CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: _menuKey,
      onTap: () => _showProfileDetails(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          child: IconButton(
            onPressed: () {
              _showProfileDetails(context);
            },
            //TODO: add svg placeholder
            icon: const Icon(Icons.person),
          ),
        ),
      ),
    );
  }

  void _showProfileDetails(BuildContext context) {
    final RenderBox renderBox = _menuKey.currentContext!.findRenderObject() as RenderBox;
    final Offset position = renderBox.localToGlobal(Offset.zero); // position of the CircleAvatar

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + renderBox.size.height, // Positioned below the CircleAvatar
        position.dx,
        position.dy,
      ),
      items: <PopupMenuEntry>[
        const PopupMenuItem(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
              Text('User Name'),
              Text('user@email.com'),
              // Add more user details here
            ],
          ),
        )
      ],
      elevation: 8.0,
    );
  }
}

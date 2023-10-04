import 'package:flutter/material.dart';
import 'package:raven/raven.dart';
import 'package:ledgerdot/package/sizeup_ext.dart';

import '../../view/home/home_model.dart';
import '../ledger_logo.dart';
import 'circle_avatar.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeModel homeModel;

  NavBar(this.homeModel);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kcDarkGreyColor,
      elevation: 5,
      child: Container(
        height: preferredSize.height,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //const Expanded(flex: 1, child: SizedBox(width: double.infinity)),
            LedgerLogo(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.help)),
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.notifications)),
                  IconButton(
                    onPressed: () => homeModel.themeService.toggleDarkLightTheme(),
                    icon: homeModel.themeService.isDarkMode
                        ? const Icon(Icons.nightlight_round_outlined)
                        : const Icon(Icons.sunny),
                  ),
                  CircleAvatarWidget(),
                ],
              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(10.h);
}

import 'package:flutter/material.dart';
import 'package:ledgerdot/infrastructure/setup/router/app.dart';
import 'package:ledgerdot/package/sizeup_ext.dart';
import 'package:stacked/stacked.dart';

import '../../widget/appbar/circle_avatar.dart';
import '../../widget/appbar/navbar.dart';
import '../../widget/fab_widget.dart';
import '../../widget/ledger_logo.dart';
import '../../widget/sidebar/side_bar.dart';
import '../home/home_model.dart';

class HomeView extends StatelessWidget {
  final int viewIndex;
  final int tabIndex;

  HomeView({super.key, this.viewIndex = 0, this.tabIndex = 0});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeModel>.reactive(
      viewModelBuilder: () => HomeModel(),
      builder: (context, homeModel, child) => Scaffold(
        /// APPBAR
        appBar: NavBar(homeModel),

        /// BODY
        body: Row(
          children: [
            /// SIDEBAR
            SideBar(model: homeModel),

            /// BODY PAGE
            Expanded(child: routeTo(homeModel.processRoute(RouteArgs(viewIndex, tabIndex))))
          ],
        ),

        /// FAB
        floatingActionButton: FabWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

        ///NAVIGATION BAR ONLY FOR MOBILE
        // bottomNavigationBar: BottomNavigationBar(
        //     currentIndex: model.currentIndex,
        //     unselectedItemColor: Colors.grey,
        //     selectedItemColor: Colors.indigoAccent,
        //     // called when one tab is selected
        //     onTap: (int index) {
        //       model.currentIndex = index;
        //     },
        //     // bottom tab items
        //     items: const [
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //       BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feed'),
        //       BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
        //       BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        //     ]),
      ),
    );
  }

  Widget _buildAppBar(HomeModel homeModel) {
    return Container(
      height: 10.h,
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding if needed
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 80, // adjust as needed
            height: 40, // adjust as needed
            child: LedgerLogo(),
          ),
          const Spacer(),
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
    );
  }
}

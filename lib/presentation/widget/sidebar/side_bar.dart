import 'package:flutter/material.dart';
import 'package:ledgerdot/presentation/view/home/home_model.dart';

//TODO: fix this to be responsive
class SideBar extends StatelessWidget {
  final HomeModel _homeModel;

  SideBar({super.key, required HomeModel model}) : _homeModel = model;

  @override
  Widget build(BuildContext context) {
    String? _selectedValue = 'Devsite';

    /// SIDE BUTTONS
    return NavigationRail(
      //TODO: add state here on a button.
      extended: true,
      labelType: NavigationRailLabelType.none,
      elevation: 5,

      onDestinationSelected: (int index) {
        _homeModel.setIndex(index);
        _homeModel.setUseIndex(true);
      },
      selectedIndex: _homeModel.currentIndex,
      destinations: [
        NavigationRailDestination(icon: Icon(Icons.dashboard), label: Text('Dashboard')),
        NavigationRailDestination(icon: Icon(Icons.monetization_on), label: Text('Income')),
        NavigationRailDestination(icon: Icon(Icons.trending_down), label: Text('Expense')),
        NavigationRailDestination(icon: Icon(Icons.auto_graph), label: Text('Analytics')),
        NavigationRailDestination(icon: Icon(Icons.account_balance), label: Text('Banking')),
        NavigationRailDestination(icon: Icon(Icons.payments), label: Text('Payroll')),
        NavigationRailDestination(
          icon: Icon(Icons.task_sharp),
          label: Text('Tax'),
        ),
        NavigationRailDestination(
          icon: IgnorePointer(child: SizedBox(height: 20.0)),
          disabled: true,
          selectedIcon: SizedBox.shrink(),
          label: SizedBox.shrink(),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.folder_copy),
          label: Text('Documents'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.settings),
          label: Text('Settings'),
        ),
        NavigationRailDestination(
          disabled: true,
          icon: Icon(Icons.swap_horizontal_circle_outlined),
          label: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
                value: _selectedValue,
                items: <String>['Devsite', 'Individual'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  _selectedValue = newValue;
                }),
          ),
        ),
      ],
    );
  }
}

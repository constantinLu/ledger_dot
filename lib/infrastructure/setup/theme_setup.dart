import 'package:flutter/material.dart';
import 'package:raven/raven.dart';

enum Shade {
  l, //light
  d, //dark
}

const _lightThemeColor = kcWhitePure;

const _darkThemeColor = kcDarkGreyColor;

const _splashColor = kcDevsiteTurcoise;

// helper methods
_appbarBackground(shade) => shade == Shade.d ? _darkThemeColor : _lightThemeColor;

_appbarIconColor(shade) => shade == Shade.d ? _darkThemeColor : _lightThemeColor;

_navRailBackgroundColor(shade) => shade == Shade.d ? _lightThemeColor : _darkThemeColor;

_iconColor(shade) => shade == Shade.d ? _darkThemeColor : _lightThemeColor;

//themes
get lightTheme => getThemes()[0];

get darkTheme => getThemes()[1];

List<ThemeData> getThemes() {
  return [
    /// ////////////////
    /// LIGHT THEME
    /// ///////////////
    ThemeData(
      brightness: Brightness.light,
      fontFamily: 'TT-Commons',
      // ON CLICK SHADOW COLOR and probably for smething else
      splashColor: _lightThemeColor,
      scaffoldBackgroundColor: _lightThemeColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: const ColorScheme.light(),

      /// APP BAR
      appBarTheme: AppBarTheme(
        backgroundColor: _lightThemeColor,
        iconTheme: IconThemeData(color: _appbarIconColor(Shade.d)),
      ),

      navigationRailTheme: NavigationRailThemeData(
        useIndicator: false,
        backgroundColor: Colors.teal,
        unselectedIconTheme: IconThemeData(
          color: _navRailBackgroundColor(Shade.d), // Color for unselected icons
        ),
        selectedIconTheme: IconThemeData(
          color: _navRailBackgroundColor(Shade.d), // Color for selected icons
        ),
        unselectedLabelTextStyle: TextStyle(
          color: (_navRailBackgroundColor(Shade.d)), // Color for unselected labels
        ),
        selectedLabelTextStyle: TextStyle(
          color: _navRailBackgroundColor(Shade.l), // Color for selected labels
        ),
      ),

      // /// TABBAR
      // tabBarTheme: const TabBarTheme(
      //     indicatorColor: kcDevsiteTurcoise,
      //     labelStyle: TextStyle(fontSize: 8),
      //     unselectedLabelStyle: TextStyle(fontSize: 6),
      //     unselectedLabelColor: kcGreyDim),
      // // color for unselected text and icon in dark mode
      //
      // /// BUTTON
      // buttonTheme: const ButtonThemeData(
      //   buttonColor: kcGreyDim, // background color for RaisedButtons
      //   textTheme: ButtonTextTheme.primary, // color for text on the button
      // ),
      //
      // /// ICON
      // iconTheme: const IconThemeData(
      //   color: kcRevolutWhite,
      // ),
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   backgroundColor: kcGreyDim,
      //   foregroundColor: kcRevolutWhite,
      // ),

      // /// TEXT
      // textTheme: const TextTheme(
      //   //DISPLAY
      //   displayLarge: TextStyle(color: lightButtonColor),
      //   displayMedium: TextStyle(color: lightButtonColor),
      //   displaySmall: TextStyle(color: lightButtonColor),
      //   //HEADLINE
      //   headlineLarge: TextStyle(color: lightButtonColor),
      //   headlineMedium: TextStyle(color: lightButtonColor),
      //   headlineSmall: TextStyle(color: lightButtonColor),
      //   //TITLE
      //   titleLarge: TextStyle(color: lightButtonColor),
      //   titleMedium: TextStyle(color: lightButtonColor),
      //   titleSmall: TextStyle(color: lightButtonColor),
      //   //LABEL
      //   labelLarge: TextStyle(color: lightButtonColor),
      //   labelMedium: TextStyle(color: lightButtonColor),
      //   labelSmall: TextStyle(color: lightButtonColor),
      //   //BODY
      //   bodyLarge: TextStyle(color: lightButtonColor),
      //   bodyMedium: TextStyle(color: lightButtonColor),
      //   bodySmall: TextStyle(color: lightButtonColor),
      // ),
    ),

    /// ////////////////
    /// DARK THEME
    /// ///////////////
    ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'TT-Commons',
      primaryColor: Colors.green,
      buttonTheme: ButtonThemeData(buttonColor: Colors.teal),
      splashColor: _splashColor,
      scaffoldBackgroundColor: _darkThemeColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: const ColorScheme.dark(),

      /// APP BAR
      appBarTheme: AppBarTheme(
        backgroundColor: _darkThemeColor,
        iconTheme: IconThemeData(color: _appbarIconColor(Shade.l)),
      ),

      navigationRailTheme: NavigationRailThemeData(
        useIndicator: false,
        backgroundColor: Colors.teal,
        unselectedIconTheme: IconThemeData(
          color: _navRailBackgroundColor(Shade.d), // Color for unselected icons
        ),
        selectedIconTheme: IconThemeData(
          color: _navRailBackgroundColor(Shade.d), // Color for selected icons
        ),
        unselectedLabelTextStyle: TextStyle(
          color: (_navRailBackgroundColor(Shade.d)), // Color for unselected labels
        ),
        selectedLabelTextStyle: TextStyle(
          color: _navRailBackgroundColor(Shade.l), // Color for selected labels
        ),
      ),

      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //
      //   sizeConstraints: BoxConstraints.expand(
      //     width: 10,
      //     height: 4,
      //   ),
      // ),
      //
      // /// TABBAR
      // tabBarTheme: const TabBarTheme(
      //     indicatorColor: kcDevsiteTurcoise,
      //     labelStyle: TextStyle(fontSize: 8),
      //     unselectedLabelStyle: TextStyle(fontSize: 6),
      //     unselectedLabelColor: kcGreyDim),
      // // color for unselected text and icon in dark mode
      //
      // /// BUTTON
      // buttonTheme: const ButtonThemeData(
      //   buttonColor: kcGreyDim, // background color for RaisedButtons
      //   textTheme: ButtonTextTheme.primary, // color for text on the button
      // ),
      //
      /// ICON
      iconTheme: IconThemeData(
        color: _iconColor(Shade.l),
      ),
      // iconButtonTheme: const IconButtonTheme(data: data, child: child)
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //   backgroundColor: kcGreyDim,
      //   foregroundColor: kcRevolutWhite,
      // ),
      //
      // /// TEXT
      // textTheme: const TextTheme(
      //   //DISPLAY
      //   displayLarge: TextStyle(color: kcWhiteCultured),
      //   displayMedium: TextStyle(color: kcWhiteCultured),
      //   displaySmall: TextStyle(color: kcWhiteCultured),
      //   //HEADLINE
      //   headlineLarge: TextStyle(color: kcWhiteCultured),
      //   headlineMedium: TextStyle(color: kcWhiteCultured),
      //   headlineSmall: TextStyle(color: kcWhiteCultured),
      //   //TITLE
      //   titleLarge: TextStyle(color: kcWhiteCultured),
      //   titleMedium: TextStyle(color: kcWhiteCultured),
      //   titleSmall: TextStyle(color: kcWhiteCultured),
      //   //LABEL
      //   labelLarge: TextStyle(color: kcWhiteCultured),
      //   labelMedium: TextStyle(color: kcWhiteCultured),
      //   labelSmall: TextStyle(color: kcWhiteCultured),
      //   //BODY
      //   bodyLarge: TextStyle(color: kcWhiteCultured),
      //   bodyMedium: TextStyle(color: kcWhiteCultured),
      //   bodySmall: TextStyle(color: kcWhiteCultured),
      // ),
    )
  ];
}

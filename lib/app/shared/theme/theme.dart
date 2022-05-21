import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

const seedColor = Color(0xFF4FBE9F);

class NoAnimationPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoAnimationPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) =>
      child;
}

class ThemeSettingChange extends Notification {
  ThemeSettingChange({required this.settings});
  final ThemeSettings settings;
}

class ThemeProvider extends InheritedWidget {
  const ThemeProvider(
      {Key? key,
      required this.settings,
      required this.lightDynamic,
      required this.darkDynamic,
      required Widget child})
      : super(key: key, child: child);

  final ThemeSettings settings;
  final ColorScheme? lightDynamic;
  final ColorScheme? darkDynamic;

  final pageTransitionsTheme = const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
      TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
      TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
    },
  );

  Color custom(CustomColor custom) {
    if (custom.blend) {
      return blend(custom.color);
    } else {
      return custom.color;
    }
  }

  Color blend(Color targetColor) {
    return Color(Blend.harmonize(targetColor.value, settings.sourceColor.value));
  }

  Color source(Color? target) {
    Color source = settings.sourceColor;
    if (target != null) {
      source = blend(target);
    }
    return source;
  }

  ColorScheme colors(Brightness brightness, Color? targetColor) {
    final dynamicPrimary =
        brightness == Brightness.light ? lightDynamic?.primary : darkDynamic?.primary;
    return ColorScheme.fromSeed(
      seedColor: dynamicPrimary ?? source(targetColor),
      brightness: brightness,
    );
  }

  ShapeBorder get shapeMedium => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      );

  CardTheme cardTheme() {
    return CardTheme(
      shape: shapeMedium,
      clipBehavior: Clip.antiAlias,
    );
  }

  ListTileThemeData listTileTheme(ColorScheme colors) {
    return ListTileThemeData(
      shape: shapeMedium,
      selectedColor: colors.secondary,
    );
  }

  AppBarTheme appBarTheme(ColorScheme colors) {
    return AppBarTheme(
      backgroundColor: colors.surface,
      foregroundColor: colors.onSurface,
    );
  }

  TabBarTheme tabBarTheme(ColorScheme colors) {
    return TabBarTheme(
      labelColor: colors.secondary,
      unselectedLabelColor: colors.onSurfaceVariant,
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colors.secondary,
            width: 2,
          ),
        ),
      ),
    );
  }

  BottomAppBarTheme bottomAppBarTheme(ColorScheme colors) {
    return BottomAppBarTheme(color: colors.surface);
  }

  BottomNavigationBarThemeData bottomNavigationBarTheme(ColorScheme colors) {
    return BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: colors.surfaceVariant,
      selectedItemColor: colors.onSurface,
      unselectedItemColor: colors.onSurfaceVariant,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    );
  }

  NavigationRailThemeData navigationRailTheme(ColorScheme colors) {
    return const NavigationRailThemeData();
  }

  DrawerThemeData drawerTheme(ColorScheme colors) {
    return DrawerThemeData(backgroundColor: colors.surface);
  }

  InputDecorationTheme inputDecorationTheme(ColorScheme colors) {
    const border = OutlineInputBorder();
    return InputDecorationTheme(
      border: border,
      focusedBorder: border.copyWith(borderSide: BorderSide(color: colors.primary)),
      enabledBorder: border.copyWith(borderSide: BorderSide(color: colors.onSurface)),
      disabledBorder: border.copyWith(borderSide: BorderSide(color: colors.onSurfaceVariant)),
    );
  }

  ThemeData light([Color? targetColor]) {
    final colors = this.colors(Brightness.light, targetColor);
    return ThemeData.light().copyWith(
      inputDecorationTheme: inputDecorationTheme(colors),
      pageTransitionsTheme: pageTransitionsTheme,
      colorScheme: colors,
      appBarTheme: appBarTheme(colors),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(colors),
      bottomAppBarTheme: bottomAppBarTheme(colors),
      bottomNavigationBarTheme: bottomNavigationBarTheme(colors),
      navigationRailTheme: navigationRailTheme(colors),
      tabBarTheme: tabBarTheme(colors),
      drawerTheme: drawerTheme(colors),
      scaffoldBackgroundColor: colors.background,
      useMaterial3: true,
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    );
  }

  ThemeData dark([Color? targetColor]) {
    final colors = this.colors(Brightness.dark, targetColor);
    return ThemeData.dark().copyWith(
      inputDecorationTheme: inputDecorationTheme(colors),
      pageTransitionsTheme: pageTransitionsTheme,
      colorScheme: colors,
      appBarTheme: appBarTheme(colors),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(colors),
      bottomAppBarTheme: bottomAppBarTheme(colors),
      bottomNavigationBarTheme: bottomNavigationBarTheme(colors),
      navigationRailTheme: navigationRailTheme(colors),
      tabBarTheme: tabBarTheme(colors),
      drawerTheme: drawerTheme(colors),
      scaffoldBackgroundColor: colors.background,
      useMaterial3: true,
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    );
  }

  ThemeMode themeMode() {
    return settings.themeMode;
  }

  ThemeData theme(BuildContext context, [Color? targetColor]) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.light ? light(targetColor) : dark(targetColor);
  }

  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant ThemeProvider oldWidget) {
    return oldWidget.settings != settings;
  }
}

class ThemeSettings {
  ThemeSettings({
    required this.sourceColor,
    required this.themeMode,
  });

  final Color sourceColor;
  final ThemeMode themeMode;
}

Color randomColor() {
  return Color(Random().nextInt(0xFFFFFFFF));
}

// Custom Colors
const linkColor = CustomColor(
  name: 'Link Color',
  color: Color(0xFF00B0FF),
);

class CustomColor {
  const CustomColor({
    required this.name,
    required this.color,
    this.blend = true,
  });

  final String name;
  final Color color;
  final bool blend;

  Color value(ThemeProvider provider) {
    return provider.custom(this);
  }
}

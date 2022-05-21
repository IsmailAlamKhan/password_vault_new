import 'package:flutter/widgets.dart';

class Breakpoints {
  static bool isSmallScreen(BoxConstraints constraints) => constraints.maxWidth < 600;
  static bool isMediumScreen(BoxConstraints constraints) => constraints.maxWidth < 900;
  static bool isLargeScreen(BoxConstraints constraints) => constraints.maxWidth < 1200;
}

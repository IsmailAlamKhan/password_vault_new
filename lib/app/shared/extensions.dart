import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension InputDecorationX on InputDecoration {
  InputDecoration merge(InputDecoration input2) {
    return copyWith(
      floatingLabelAlignment: input2.floatingLabelAlignment,
      alignLabelWithHint: input2.alignLabelWithHint,
      border: input2.border,
      constraints: input2.constraints,
      contentPadding: input2.contentPadding,
      counter: input2.counter,
      counterStyle: input2.counterStyle,
      counterText: input2.counterText,
      disabledBorder: input2.disabledBorder,
      enabled: input2.enabled,
      enabledBorder: input2.enabledBorder,
      errorBorder: input2.errorBorder,
      errorMaxLines: input2.errorMaxLines,
      errorStyle: input2.errorStyle,
      errorText: input2.errorText,
      fillColor: input2.fillColor,
      filled: input2.filled,
      floatingLabelBehavior: input2.floatingLabelBehavior,
      floatingLabelStyle: input2.floatingLabelStyle,
      focusColor: input2.focusColor,
      focusedBorder: input2.focusedBorder,
      focusedErrorBorder: input2.focusedErrorBorder,
      helperMaxLines: input2.helperMaxLines,
      helperStyle: input2.helperStyle,
      helperText: input2.helperText,
      hintMaxLines: input2.hintMaxLines,
      hintStyle: input2.hintStyle,
      hintText: input2.hintText,
      hintTextDirection: input2.hintTextDirection,
      hoverColor: input2.hoverColor,
      icon: input2.icon,
      iconColor: input2.iconColor,
      isCollapsed: input2.isCollapsed,
      isDense: input2.isDense,
      label: input2.label,
      labelStyle: input2.labelStyle,
      labelText: input2.labelText,
      prefix: input2.prefix,
      prefixIcon: input2.prefixIcon,
      prefixIconColor: input2.prefixIconColor,
      prefixIconConstraints: input2.prefixIconConstraints,
      prefixStyle: input2.prefixStyle,
      prefixText: input2.prefixText,
      semanticCounterText: input2.semanticCounterText,
      suffix: input2.suffix,
      suffixIcon: input2.suffixIcon,
      suffixIconColor: input2.suffixIconColor,
      suffixIconConstraints: input2.suffixIconConstraints,
      suffixStyle: input2.suffixStyle,
      suffixText: input2.suffixText,
    );
  }
}

extension ExtendedList<T> on List<T> {
  List<E> indexedMap<E>(E Function(int index, T element) f) =>
      asMap().map((index, value) => MapEntry(index, f(index, value))).values.toList();
}

extension StringX on String {
  String get capitalizeFirst => '${this[0].toUpperCase()}${substring(1)}';
}

extension ExtendedNum on num {
  bool between(num begin, num end) => this >= begin && this < end;
  bool betweenOrEqual(num begin, num end) => this >= begin && this <= end;
}

extension ColorX on Color {
  Future<double> _computeLuminance() {
    return compute<String, double>((_) => computeLuminance(), '');
  }

  Future<Brightness> brightnessBasedOnBackground() async {
    if ((await _computeLuminance()) > 0.5) {
      return Brightness.light;
    } else {
      return Brightness.dark;
    }
  }

  Future<Color?> contrastColor({
    Color? Function(Brightness brightness)? colorBuilder,
  }) async =>
      (await brightnessBasedOnBackground()).contrastColor(colorBuilder: colorBuilder);
}

extension BrightnessX on Brightness {
  Color? contrastColor({
    Color? Function(Brightness brightness)? colorBuilder,
  }) {
    if (colorBuilder != null) {
      return colorBuilder(this);
    }
    if (this == Brightness.light) {
      return Colors.black87;
    } else {
      return Colors.white70;
    }
  }
}

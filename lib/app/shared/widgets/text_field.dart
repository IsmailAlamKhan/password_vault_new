import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:password_vault/app/shared/extensions.dart';

import '../formz/base_codegen.dart';

enum TextFieldType { text, email, password }

class AppTextFormField<T extends DefaultStringInput> extends HookWidget {
  const AppTextFormField({
    super.key,
    this.type = TextFieldType.text,
    this.decoration,
    this.label,
    required this.formzInput,
    this.onChanged,
  }) : assert(
          decoration == null || label == null,
          'You can only use one of the two properties: decoration or label',
        );
  final TextFieldType type;
  final InputDecoration? decoration;
  final String? label;
  final T formzInput;
  final ValueChanged<T>? onChanged;
  @override
  Widget build(BuildContext context) {
    final obsecure = useState(true);
    final isPassword = type == TextFieldType.password;
    InputDecoration decoration = const InputDecoration();
    if (this.decoration != null) {
      decoration = this.decoration!;
    } else if (label != null) {
      decoration = InputDecoration(labelText: label);
    }
    final tec = useTextEditingController(text: formzInput.value);

    useEffect(() {
      if (tec.text != formzInput.value) {
        tec.text = formzInput.value;
      }
    }, [formzInput]);
    return TextField(
      obscureText: isPassword ? obsecure.value : false,
      onChanged: (value) => onChanged?.call(formzInput.copyWith(value) as T),
      decoration: _InputDecoration(
        isPassword,
        obsecure.value,
        (value) => obsecure.value = value,
        errorText: formzInput.error?.message,
      ).merge(decoration),
    );
  }
}

class _InputDecoration extends InputDecoration {
  final bool isPassword;
  final bool isObsecure;
  final ValueChanged<bool> onToggleObsecure;
  const _InputDecoration(
    this.isPassword,
    this.isObsecure,
    this.onToggleObsecure, {
    super.errorText,
  });

  @override
  Widget? get suffixIcon {
    if (isPassword) {
      return IconButton(
        icon: Icon(isObsecure ? Icons.visibility : Icons.visibility_off),
        onPressed: () => onToggleObsecure(!isObsecure),
      );
    }
    return super.suffixIcon;
  }
}

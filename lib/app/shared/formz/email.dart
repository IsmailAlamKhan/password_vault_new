import 'package:validators/validators.dart';

import 'base_codegen.dart';

class Email extends DefaultStringInput {
  Email({
    required bool isRequired,
    required String value,
  }) : super(isRequired: isRequired, value: value);

  const Email.pure() : super.pure();
  const Email.dirty([String value = '']) : super.dirty(value);

  const Email.pureNonRequired() : super.pureNonRequired();
  const Email.dirtyNonRequired([String value = '']) : super.dirtyNonRequired(value);

  @override
  Email copyWith([String? value]) => Email(
        isRequired: isRequired,
        value: value ?? this.value,
      );
  @override
  String get label => 'Email';

  @override
  InputError? customValidator([_]) {
    InputError? newValidator;
    if (!isEmail(value)) {
      newValidator = const InputError.invalid('Email is invalid');
    }
    return super.customValidator(newValidator);
  }
}

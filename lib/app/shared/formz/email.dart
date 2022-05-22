import 'package:validators/validators.dart';

import 'base_codegen.dart';

class Email extends DefaultStringInput {
  Email({
    required super.isRequired,
    required super.value,
  });

  const Email.pure() : super.pure();
  const Email.dirty([super.value]) : super.dirty();

  const Email.pureNonRequired() : super.pureNonRequired();
  const Email.dirtyNonRequired([super.value]) : super.dirtyNonRequired();

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

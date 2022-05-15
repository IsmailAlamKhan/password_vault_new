import 'base_codegen.dart';

class Password extends DefaultStringInput {
  Password({
    required bool isRequired,
    required String value,
  }) : super(isRequired: isRequired, value: value);

  const Password.pure() : super.pure();
  const Password.dirty([String value = '']) : super.dirty(value);

  const Password.pureNonRequired() : super.pureNonRequired();
  const Password.dirtyNonRequired([String value = '']) : super.dirtyNonRequired(value);

  @override
  Password copyWith([String? value]) => Password(
        isRequired: isRequired,
        value: value ?? this.value,
      );
  @override
  String get label => 'Password';
}

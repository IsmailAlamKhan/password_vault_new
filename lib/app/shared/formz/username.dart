import 'base_codegen.dart';

class Username extends DefaultStringInput {
  Username({required bool isRequired, required String value})
      : super(isRequired: isRequired, value: value);

  const Username.pure() : super.pure();
  const Username.dirty([String value = '']) : super.dirty(value);

  const Username.pureNonRequired() : super.pureNonRequired();
  const Username.dirtyNonRequired([String value = '']) : super.dirtyNonRequired(value);

  @override
  Username copyWith([String? value]) =>
      Username(isRequired: isRequired, value: value ?? this.value);
  @override
  String get label => 'Username';
}

import 'base_codegen.dart';

class Username extends DefaultStringInput {
  Username({required super.isRequired, required super.value});

  const Username.pure() : super.pure();
  const Username.dirty([super.value]) : super.dirty();

  const Username.pureNonRequired() : super.pureNonRequired();
  const Username.dirtyNonRequired([super.value]) : super.dirtyNonRequired();

  @override
  Username copyWith([String? value]) =>
      Username(isRequired: isRequired, value: value ?? this.value);
  @override
  String get label => 'Username';
}

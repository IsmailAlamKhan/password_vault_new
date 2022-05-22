import 'base_codegen.dart';

class Password extends DefaultStringInput {
  Password({
    required super.isRequired,
    required super.value,
  });

  const Password.pure() : super.pure();
  const Password.dirty([super.value]) : super.dirty();

  const Password.pureNonRequired() : super.pureNonRequired();
  const Password.dirtyNonRequired([super.value]) : super.dirtyNonRequired();

  @override
  Password copyWith([String? value]) => Password(
        isRequired: isRequired,
        value: value ?? this.value,
      );
  @override
  String get label => 'Password';
}

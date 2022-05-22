import 'formz.dart';

class TextInput extends DefaultStringInput {
  TextInput({
    required super.isRequired,
    required super.value,
  });

  const TextInput.pure() : super.pure();
  const TextInput.dirty([super.value]) : super.dirty();

  const TextInput.pureNonRequired() : super.pureNonRequired();
  const TextInput.dirtyNonRequired([super.value]) : super.dirtyNonRequired();

  @override
  TextInput copyWith([String? value]) => TextInput(
        isRequired: isRequired,
        value: value ?? this.value,
      );
  @override
  String get label => 'TextInput';
}

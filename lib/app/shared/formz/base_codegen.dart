import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_codegen.freezed.dart';

@freezed
class InputError with _$InputError {
  const factory InputError.invalid(String message) = _InputErrorInvalid;
  const factory InputError.empty(String message) = _InputErrorEmpty;
}

mixin FormStateMixin {
  FormzStatus get status => Formz.validate(inputs);

  List<DefaultInput> get inputs;

  bool get isValid => status.isValidated;
  bool get isSubmissionInProgress => status.isSubmissionInProgress;
  bool get isSubmissionSuccess => status.isSubmissionSuccess;
  bool get isSubmissionFailure => status.isSubmissionFailure;
  bool get isInvalid => status.isInvalid;
  bool get canSubmit {
    final containsPure = inputs.any((element) => element.isRequired && element.pure);
    return !containsPure && isValid;
  }

  String? get maybeError {
    final invalidInputs = inputs.where((element) => element.invalid);
    final emptyRequiredInputs = inputs.where((element) {
      return element.isRequired && element.pure;
    });

    final errors = <String>[];
    for (final input in emptyRequiredInputs) {
      errors.add('${input.label} is required');
    }
    for (final input in invalidInputs) {
      errors.add(input.error?.message ?? '${input.label} is invalid');
    }
    if (errors.isEmpty) return null;
    return errors.join('\n');
  }

  String get error => maybeError!;
}

abstract class DefaultInput<T extends Object?> extends FormzInput<T, InputError> {
  String get label;
  final bool isRequired;

  DefaultInput({required this.isRequired, required T value}) : super.dirty(value);

  const DefaultInput.dirty(super.value)
      : isRequired = true,
        super.dirty();
  const DefaultInput.pure(super.value)
      : isRequired = true,
        super.pure();

  const DefaultInput.dirtyNonRequired(super.value)
      : isRequired = false,
        super.dirty();
  const DefaultInput.pureNonRequired(super.value)
      : isRequired = false,
        super.pure();

  DefaultInput copyWith([T? value]);

  InputError? get defaultValidator {
    final value = this.value;
    if (isRequired) {
      if ((value == null ||
          (value is String && value.isEmpty) ||
          (value is Iterable && value.isEmpty) ||
          (value is Map && value.isEmpty))) {
        return InputError.empty('$label is required');
      }
    }
  }

  InputError? customValidator([InputError? newValidator]) {
    if (pure) return null;

    final defaultValidator = this.defaultValidator;
    if (isRequired) {
      return defaultValidator ?? newValidator;
    } else {
      if (defaultValidator != null) return newValidator;
    }
  }

  @nonVirtual
  @override
  InputError? validator(_) => customValidator();
}

abstract class DefaultStringInput extends DefaultInput<String> {
  DefaultStringInput({
    required super.isRequired,
    required super.value,
  });
  const DefaultStringInput.dirty([super.value = '']) : super.dirty();
  const DefaultStringInput.pure([super.value = '']) : super.pure();

  const DefaultStringInput.dirtyNonRequired([super.value = '']) : super.dirtyNonRequired();
  const DefaultStringInput.pureNonRequired([String value = '']) : super.pureNonRequired('');

  @override
  DefaultStringInput copyWith([String? value]);
}

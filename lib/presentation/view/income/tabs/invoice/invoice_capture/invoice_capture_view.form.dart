// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String SeriesNumberValueKey = 'seriesNumber';

final Map<String, TextEditingController>
    _InvoiceCaptureViewTextEditingControllers = {};

final Map<String, FocusNode> _InvoiceCaptureViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _InvoiceCaptureViewTextValidations = {
  SeriesNumberValueKey: null,
};

mixin $InvoiceCaptureView {
  TextEditingController get seriesNumberController =>
      _getFormTextEditingController(SeriesNumberValueKey);

  FocusNode get seriesNumberFocusNode =>
      _getFormFocusNode(SeriesNumberValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_InvoiceCaptureViewTextEditingControllers.containsKey(key)) {
      return _InvoiceCaptureViewTextEditingControllers[key]!;
    }

    _InvoiceCaptureViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _InvoiceCaptureViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_InvoiceCaptureViewFocusNodes.containsKey(key)) {
      return _InvoiceCaptureViewFocusNodes[key]!;
    }
    _InvoiceCaptureViewFocusNodes[key] = FocusNode();
    return _InvoiceCaptureViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    seriesNumberController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    seriesNumberController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          SeriesNumberValueKey: seriesNumberController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _InvoiceCaptureViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _InvoiceCaptureViewFocusNodes.values) {
      focusNode.dispose();
    }

    _InvoiceCaptureViewTextEditingControllers.clear();
    _InvoiceCaptureViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get seriesNumberValue =>
      this.formValueMap[SeriesNumberValueKey] as String?;

  set seriesNumberValue(String? value) {
    this.setData(
      this.formValueMap..addAll({SeriesNumberValueKey: value}),
    );

    if (_InvoiceCaptureViewTextEditingControllers.containsKey(
        SeriesNumberValueKey)) {
      _InvoiceCaptureViewTextEditingControllers[SeriesNumberValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasSeriesNumber =>
      this.formValueMap.containsKey(SeriesNumberValueKey) &&
      (seriesNumberValue?.isNotEmpty ?? false);

  bool get hasSeriesNumberValidationMessage =>
      this.fieldsValidationMessages[SeriesNumberValueKey]?.isNotEmpty ?? false;

  String? get seriesNumberValidationMessage =>
      this.fieldsValidationMessages[SeriesNumberValueKey];
}

extension Methods on FormStateHelper {
  setSeriesNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SeriesNumberValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    seriesNumberValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      SeriesNumberValueKey: getValidationMessage(SeriesNumberValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _InvoiceCaptureViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _InvoiceCaptureViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      SeriesNumberValueKey: getValidationMessage(SeriesNumberValueKey),
    });

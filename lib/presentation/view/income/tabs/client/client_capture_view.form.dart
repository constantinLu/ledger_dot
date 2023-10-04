// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String ClientNameValueKey = 'clientName';
const String AliasValueKey = 'alias';

final Map<String, TextEditingController>
    _ClientCaptureViewTextEditingControllers = {};

final Map<String, FocusNode> _ClientCaptureViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _ClientCaptureViewTextValidations = {
  ClientNameValueKey: null,
  AliasValueKey: null,
};

mixin $ClientCaptureView {
  TextEditingController get clientNameController =>
      _getFormTextEditingController(ClientNameValueKey);
  TextEditingController get aliasController =>
      _getFormTextEditingController(AliasValueKey);

  FocusNode get clientNameFocusNode => _getFormFocusNode(ClientNameValueKey);
  FocusNode get aliasFocusNode => _getFormFocusNode(AliasValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_ClientCaptureViewTextEditingControllers.containsKey(key)) {
      return _ClientCaptureViewTextEditingControllers[key]!;
    }

    _ClientCaptureViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _ClientCaptureViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_ClientCaptureViewFocusNodes.containsKey(key)) {
      return _ClientCaptureViewFocusNodes[key]!;
    }
    _ClientCaptureViewFocusNodes[key] = FocusNode();
    return _ClientCaptureViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    clientNameController.addListener(() => _updateFormData(model));
    aliasController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    clientNameController.addListener(() => _updateFormData(model));
    aliasController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          ClientNameValueKey: clientNameController.text,
          AliasValueKey: aliasController.text,
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

    for (var controller in _ClientCaptureViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _ClientCaptureViewFocusNodes.values) {
      focusNode.dispose();
    }

    _ClientCaptureViewTextEditingControllers.clear();
    _ClientCaptureViewFocusNodes.clear();
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

  String? get clientNameValue =>
      this.formValueMap[ClientNameValueKey] as String?;
  String? get aliasValue => this.formValueMap[AliasValueKey] as String?;

  set clientNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ClientNameValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(
        ClientNameValueKey)) {
      _ClientCaptureViewTextEditingControllers[ClientNameValueKey]?.text =
          value ?? '';
    }
  }

  set aliasValue(String? value) {
    this.setData(
      this.formValueMap..addAll({AliasValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(AliasValueKey)) {
      _ClientCaptureViewTextEditingControllers[AliasValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasClientName =>
      this.formValueMap.containsKey(ClientNameValueKey) &&
      (clientNameValue?.isNotEmpty ?? false);
  bool get hasAlias =>
      this.formValueMap.containsKey(AliasValueKey) &&
      (aliasValue?.isNotEmpty ?? false);

  bool get hasClientNameValidationMessage =>
      this.fieldsValidationMessages[ClientNameValueKey]?.isNotEmpty ?? false;
  bool get hasAliasValidationMessage =>
      this.fieldsValidationMessages[AliasValueKey]?.isNotEmpty ?? false;

  String? get clientNameValidationMessage =>
      this.fieldsValidationMessages[ClientNameValueKey];
  String? get aliasValidationMessage =>
      this.fieldsValidationMessages[AliasValueKey];
}

extension Methods on FormStateHelper {
  setClientNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ClientNameValueKey] = validationMessage;
  setAliasValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[AliasValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    clientNameValue = '';
    aliasValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      ClientNameValueKey: getValidationMessage(ClientNameValueKey),
      AliasValueKey: getValidationMessage(AliasValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _ClientCaptureViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _ClientCaptureViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      ClientNameValueKey: getValidationMessage(ClientNameValueKey),
      AliasValueKey: getValidationMessage(AliasValueKey),
    });

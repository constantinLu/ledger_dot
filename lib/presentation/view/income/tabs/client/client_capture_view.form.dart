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
const String VatNoValueKey = 'vatNo';
const String StreetValueKey = 'street';
const String CityValueKey = 'city';
const String CountyValueKey = 'county';
const String CountryValueKey = 'country';
const String ContactNameValueKey = 'contactName';
const String EmailValueKey = 'email';
const String PhoneNoValueKey = 'phoneNo';

final Map<String, TextEditingController>
    _ClientCaptureViewTextEditingControllers = {};

final Map<String, FocusNode> _ClientCaptureViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _ClientCaptureViewTextValidations = {
  ClientNameValueKey: null,
  AliasValueKey: null,
  VatNoValueKey: null,
  StreetValueKey: null,
  CityValueKey: null,
  CountyValueKey: null,
  CountryValueKey: null,
  ContactNameValueKey: null,
  EmailValueKey: null,
  PhoneNoValueKey: null,
};

mixin $ClientCaptureView {
  TextEditingController get clientNameController =>
      _getFormTextEditingController(ClientNameValueKey);
  TextEditingController get aliasController =>
      _getFormTextEditingController(AliasValueKey);
  TextEditingController get vatNoController =>
      _getFormTextEditingController(VatNoValueKey);
  TextEditingController get streetController =>
      _getFormTextEditingController(StreetValueKey);
  TextEditingController get cityController =>
      _getFormTextEditingController(CityValueKey);
  TextEditingController get countyController =>
      _getFormTextEditingController(CountyValueKey);
  TextEditingController get countryController =>
      _getFormTextEditingController(CountryValueKey);
  TextEditingController get contactNameController =>
      _getFormTextEditingController(ContactNameValueKey);
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get phoneNoController =>
      _getFormTextEditingController(PhoneNoValueKey);

  FocusNode get clientNameFocusNode => _getFormFocusNode(ClientNameValueKey);
  FocusNode get aliasFocusNode => _getFormFocusNode(AliasValueKey);
  FocusNode get vatNoFocusNode => _getFormFocusNode(VatNoValueKey);
  FocusNode get streetFocusNode => _getFormFocusNode(StreetValueKey);
  FocusNode get cityFocusNode => _getFormFocusNode(CityValueKey);
  FocusNode get countyFocusNode => _getFormFocusNode(CountyValueKey);
  FocusNode get countryFocusNode => _getFormFocusNode(CountryValueKey);
  FocusNode get contactNameFocusNode => _getFormFocusNode(ContactNameValueKey);
  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get phoneNoFocusNode => _getFormFocusNode(PhoneNoValueKey);

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
    vatNoController.addListener(() => _updateFormData(model));
    streetController.addListener(() => _updateFormData(model));
    cityController.addListener(() => _updateFormData(model));
    countyController.addListener(() => _updateFormData(model));
    countryController.addListener(() => _updateFormData(model));
    contactNameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    phoneNoController.addListener(() => _updateFormData(model));

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
    vatNoController.addListener(() => _updateFormData(model));
    streetController.addListener(() => _updateFormData(model));
    cityController.addListener(() => _updateFormData(model));
    countyController.addListener(() => _updateFormData(model));
    countryController.addListener(() => _updateFormData(model));
    contactNameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    phoneNoController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          ClientNameValueKey: clientNameController.text,
          AliasValueKey: aliasController.text,
          VatNoValueKey: vatNoController.text,
          StreetValueKey: streetController.text,
          CityValueKey: cityController.text,
          CountyValueKey: countyController.text,
          CountryValueKey: countryController.text,
          ContactNameValueKey: contactNameController.text,
          EmailValueKey: emailController.text,
          PhoneNoValueKey: phoneNoController.text,
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
  String? get vatNoValue => this.formValueMap[VatNoValueKey] as String?;
  String? get streetValue => this.formValueMap[StreetValueKey] as String?;
  String? get cityValue => this.formValueMap[CityValueKey] as String?;
  String? get countyValue => this.formValueMap[CountyValueKey] as String?;
  String? get countryValue => this.formValueMap[CountryValueKey] as String?;
  String? get contactNameValue =>
      this.formValueMap[ContactNameValueKey] as String?;
  String? get emailValue => this.formValueMap[EmailValueKey] as String?;
  String? get phoneNoValue => this.formValueMap[PhoneNoValueKey] as String?;

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

  set vatNoValue(String? value) {
    this.setData(
      this.formValueMap..addAll({VatNoValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(VatNoValueKey)) {
      _ClientCaptureViewTextEditingControllers[VatNoValueKey]?.text =
          value ?? '';
    }
  }

  set streetValue(String? value) {
    this.setData(
      this.formValueMap..addAll({StreetValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(StreetValueKey)) {
      _ClientCaptureViewTextEditingControllers[StreetValueKey]?.text =
          value ?? '';
    }
  }

  set cityValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CityValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(CityValueKey)) {
      _ClientCaptureViewTextEditingControllers[CityValueKey]?.text =
          value ?? '';
    }
  }

  set countyValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CountyValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(CountyValueKey)) {
      _ClientCaptureViewTextEditingControllers[CountyValueKey]?.text =
          value ?? '';
    }
  }

  set countryValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CountryValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(CountryValueKey)) {
      _ClientCaptureViewTextEditingControllers[CountryValueKey]?.text =
          value ?? '';
    }
  }

  set contactNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ContactNameValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(
        ContactNameValueKey)) {
      _ClientCaptureViewTextEditingControllers[ContactNameValueKey]?.text =
          value ?? '';
    }
  }

  set emailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EmailValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(EmailValueKey)) {
      _ClientCaptureViewTextEditingControllers[EmailValueKey]?.text =
          value ?? '';
    }
  }

  set phoneNoValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PhoneNoValueKey: value}),
    );

    if (_ClientCaptureViewTextEditingControllers.containsKey(PhoneNoValueKey)) {
      _ClientCaptureViewTextEditingControllers[PhoneNoValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasClientName =>
      this.formValueMap.containsKey(ClientNameValueKey) &&
      (clientNameValue?.isNotEmpty ?? false);
  bool get hasAlias =>
      this.formValueMap.containsKey(AliasValueKey) &&
      (aliasValue?.isNotEmpty ?? false);
  bool get hasVatNo =>
      this.formValueMap.containsKey(VatNoValueKey) &&
      (vatNoValue?.isNotEmpty ?? false);
  bool get hasStreet =>
      this.formValueMap.containsKey(StreetValueKey) &&
      (streetValue?.isNotEmpty ?? false);
  bool get hasCity =>
      this.formValueMap.containsKey(CityValueKey) &&
      (cityValue?.isNotEmpty ?? false);
  bool get hasCounty =>
      this.formValueMap.containsKey(CountyValueKey) &&
      (countyValue?.isNotEmpty ?? false);
  bool get hasCountry =>
      this.formValueMap.containsKey(CountryValueKey) &&
      (countryValue?.isNotEmpty ?? false);
  bool get hasContactName =>
      this.formValueMap.containsKey(ContactNameValueKey) &&
      (contactNameValue?.isNotEmpty ?? false);
  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);
  bool get hasPhoneNo =>
      this.formValueMap.containsKey(PhoneNoValueKey) &&
      (phoneNoValue?.isNotEmpty ?? false);

  bool get hasClientNameValidationMessage =>
      this.fieldsValidationMessages[ClientNameValueKey]?.isNotEmpty ?? false;
  bool get hasAliasValidationMessage =>
      this.fieldsValidationMessages[AliasValueKey]?.isNotEmpty ?? false;
  bool get hasVatNoValidationMessage =>
      this.fieldsValidationMessages[VatNoValueKey]?.isNotEmpty ?? false;
  bool get hasStreetValidationMessage =>
      this.fieldsValidationMessages[StreetValueKey]?.isNotEmpty ?? false;
  bool get hasCityValidationMessage =>
      this.fieldsValidationMessages[CityValueKey]?.isNotEmpty ?? false;
  bool get hasCountyValidationMessage =>
      this.fieldsValidationMessages[CountyValueKey]?.isNotEmpty ?? false;
  bool get hasCountryValidationMessage =>
      this.fieldsValidationMessages[CountryValueKey]?.isNotEmpty ?? false;
  bool get hasContactNameValidationMessage =>
      this.fieldsValidationMessages[ContactNameValueKey]?.isNotEmpty ?? false;
  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasPhoneNoValidationMessage =>
      this.fieldsValidationMessages[PhoneNoValueKey]?.isNotEmpty ?? false;

  String? get clientNameValidationMessage =>
      this.fieldsValidationMessages[ClientNameValueKey];
  String? get aliasValidationMessage =>
      this.fieldsValidationMessages[AliasValueKey];
  String? get vatNoValidationMessage =>
      this.fieldsValidationMessages[VatNoValueKey];
  String? get streetValidationMessage =>
      this.fieldsValidationMessages[StreetValueKey];
  String? get cityValidationMessage =>
      this.fieldsValidationMessages[CityValueKey];
  String? get countyValidationMessage =>
      this.fieldsValidationMessages[CountyValueKey];
  String? get countryValidationMessage =>
      this.fieldsValidationMessages[CountryValueKey];
  String? get contactNameValidationMessage =>
      this.fieldsValidationMessages[ContactNameValueKey];
  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get phoneNoValidationMessage =>
      this.fieldsValidationMessages[PhoneNoValueKey];
}

extension Methods on FormStateHelper {
  setClientNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ClientNameValueKey] = validationMessage;
  setAliasValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[AliasValueKey] = validationMessage;
  setVatNoValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[VatNoValueKey] = validationMessage;
  setStreetValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[StreetValueKey] = validationMessage;
  setCityValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CityValueKey] = validationMessage;
  setCountyValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CountyValueKey] = validationMessage;
  setCountryValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CountryValueKey] = validationMessage;
  setContactNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ContactNameValueKey] = validationMessage;
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setPhoneNoValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PhoneNoValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    clientNameValue = '';
    aliasValue = '';
    vatNoValue = '';
    streetValue = '';
    cityValue = '';
    countyValue = '';
    countryValue = '';
    contactNameValue = '';
    emailValue = '';
    phoneNoValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      ClientNameValueKey: getValidationMessage(ClientNameValueKey),
      AliasValueKey: getValidationMessage(AliasValueKey),
      VatNoValueKey: getValidationMessage(VatNoValueKey),
      StreetValueKey: getValidationMessage(StreetValueKey),
      CityValueKey: getValidationMessage(CityValueKey),
      CountyValueKey: getValidationMessage(CountyValueKey),
      CountryValueKey: getValidationMessage(CountryValueKey),
      ContactNameValueKey: getValidationMessage(ContactNameValueKey),
      EmailValueKey: getValidationMessage(EmailValueKey),
      PhoneNoValueKey: getValidationMessage(PhoneNoValueKey),
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
      VatNoValueKey: getValidationMessage(VatNoValueKey),
      StreetValueKey: getValidationMessage(StreetValueKey),
      CityValueKey: getValidationMessage(CityValueKey),
      CountyValueKey: getValidationMessage(CountyValueKey),
      CountryValueKey: getValidationMessage(CountryValueKey),
      ContactNameValueKey: getValidationMessage(ContactNameValueKey),
      EmailValueKey: getValidationMessage(EmailValueKey),
      PhoneNoValueKey: getValidationMessage(PhoneNoValueKey),
    });

// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Ok`
  String get common_ok {
    return Intl.message(
      'Ok',
      name: 'common_ok',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get common_done {
    return Intl.message(
      'Done',
      name: 'common_done',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get common_cancel {
    return Intl.message(
      'Cancel',
      name: 'common_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get common_confirm {
    return Intl.message(
      'Confirm',
      name: 'common_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get common_submit {
    return Intl.message(
      'Submit',
      name: 'common_submit',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get common_save {
    return Intl.message(
      'Save',
      name: 'common_save',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get common_register {
    return Intl.message(
      'Register',
      name: 'common_register',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get common_next {
    return Intl.message(
      'Next',
      name: 'common_next',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get common_error {
    return Intl.message(
      'Error',
      name: 'common_error',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get common_settings {
    return Intl.message(
      'Settings',
      name: 'common_settings',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get common_success {
    return Intl.message(
      'Success',
      name: 'common_success',
      desc: '',
      args: [],
    );
  }

  /// `Fail`
  String get common_fail {
    return Intl.message(
      'Fail',
      name: 'common_fail',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get common_exit {
    return Intl.message(
      'Exit',
      name: 'common_exit',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get common_edit {
    return Intl.message(
      'Edit',
      name: 'common_edit',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get common_clear {
    return Intl.message(
      'Clear',
      name: 'common_clear',
      desc: '',
      args: [],
    );
  }

  /// `Network Error`
  String get common_network_error {
    return Intl.message(
      'Network Error',
      name: 'common_network_error',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get common_home {
    return Intl.message(
      'Home',
      name: 'common_home',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get common_general {
    return Intl.message(
      'General',
      name: 'common_general',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get common_other {
    return Intl.message(
      'Other',
      name: 'common_other',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get common_profile {
    return Intl.message(
      'Profile',
      name: 'common_profile',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get common_notification {
    return Intl.message(
      'Notification',
      name: 'common_notification',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get common_more {
    return Intl.message(
      'More',
      name: 'common_more',
      desc: '',
      args: [],
    );
  }

  /// `Error Unexpected`
  String get common_error_unexpected {
    return Intl.message(
      'Error Unexpected',
      name: 'common_error_unexpected',
      desc: '',
      args: [],
    );
  }

  /// `Error Internal Server`
  String get common_error_internal_server {
    return Intl.message(
      'Error Internal Server',
      name: 'common_error_internal_server',
      desc: '',
      args: [],
    );
  }

  /// `Error Unauthorized`
  String get common_error_unauthorized {
    return Intl.message(
      'Error Unauthorized',
      name: 'common_error_unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get common_about {
    return Intl.message(
      'About',
      name: 'common_about',
      desc: '',
      args: [],
    );
  }

  /// `Error Invalid Email`
  String get common_error_invalid_email {
    return Intl.message(
      'Error Invalid Email',
      name: 'common_error_invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Error Invalid Password`
  String get common_error_invalid_password {
    return Intl.message(
      'Error Invalid Password',
      name: 'common_error_invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get common_login {
    return Intl.message(
      'Login',
      name: 'common_login',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get common_email {
    return Intl.message(
      'email',
      name: 'common_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get common_password {
    return Intl.message(
      'Password',
      name: 'common_password',
      desc: '',
      args: [],
    );
  }

  /// `Counter`
  String get common_counter {
    return Intl.message(
      'Counter',
      name: 'common_counter',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get common_hello {
    return Intl.message(
      'Hello',
      name: 'common_hello',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get common_language {
    return Intl.message(
      'Language',
      name: 'common_language',
      desc: '',
      args: [],
    );
  }

  /// `Terms Conditions`
  String get common_terms_conditions {
    return Intl.message(
      'Terms Conditions',
      name: 'common_terms_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policies`
  String get common_privacy_policies {
    return Intl.message(
      'Privacy Policies',
      name: 'common_privacy_policies',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get common_logout {
    return Intl.message(
      'Logout',
      name: 'common_logout',
      desc: '',
      args: [],
    );
  }

  /// `Version {x}`
  String common_version(Object x) {
    return Intl.message(
      'Version $x',
      name: 'common_version',
      desc: '',
      args: [x],
    );
  }

  /// `Dark Mode`
  String get setting_dark_mode {
    return Intl.message(
      'Dark Mode',
      name: 'setting_dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get setting_system {
    return Intl.message(
      'System',
      name: 'setting_system',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get setting_yes {
    return Intl.message(
      'Yes',
      name: 'setting_yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get setting_no {
    return Intl.message(
      'No',
      name: 'setting_no',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
      Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signIn_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInController on _SignInControllerBase, Store {
  Computed<String> _$validateEmailComputed;

  @override
  String get validateEmail =>
      (_$validateEmailComputed ??= Computed<String>(() => super.validateEmail,
              name: '_SignInControllerBase.validateEmail'))
          .value;
  Computed<String> _$validatePasswordComputed;

  @override
  String get validatePassword => (_$validatePasswordComputed ??=
          Computed<String>(() => super.validatePassword,
              name: '_SignInControllerBase.validatePassword'))
      .value;

  final _$emailAtom = Atom(name: '_SignInControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignInControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_SignInControllerBaseActionController =
      ActionController(name: '_SignInControllerBase');

  @override
  void changeEmail(String newValue) {
    final _$actionInfo = _$_SignInControllerBaseActionController.startAction(
        name: '_SignInControllerBase.changeEmail');
    try {
      return super.changeEmail(newValue);
    } finally {
      _$_SignInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String newValue) {
    final _$actionInfo = _$_SignInControllerBaseActionController.startAction(
        name: '_SignInControllerBase.changePassword');
    try {
      return super.changePassword(newValue);
    } finally {
      _$_SignInControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
validateEmail: ${validateEmail},
validatePassword: ${validatePassword}
    ''';
  }
}

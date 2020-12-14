// import 'package:appadoca/app/utils/validators.dart';
// import 'package:flutter/material.dart';
// import 'package:mobx/mobx.dart';
// part 'signin_controller.g.dart';

// class SignInController = _SignInControllerBase with _$SignInController;

// abstract class _SignInControllerBase with Store {
//   @observable
//   String email = '';

//   @observable
//   String password = '';

//   final FocusNode focusEmail = FocusNode();
//   final FocusNode focusPassword = FocusNode();

//   @action
//   void changeEmail(String newValue) => email = newValue;

//   @action
//   void changePassword(String newValue) => password = newValue;

//   @computed
//   String get validateEmail {
//     if (email.isEmpty) {
//       return null;
//     }
//     return Validators.validateEmail(
//       email,
//       transformToLoweCase: true,
//     );
//   }

//   @computed
//   String get validatePassword {
//     if (password.isEmpty) {
//       return null;
//     }
//     return Validators.validatePassword(password);
//   }
// }

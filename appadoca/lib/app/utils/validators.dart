import 'package:appadoca/app/resources/strings.dart';

class Validators {
  static String validateEmail(
    String email, {
    bool transformToLoweCase = false,
    String errorMessage = Strings.valitadorInsertValidEmail,
  }) {
    String _email = email;

    final RegExp regex = RegExp(
      r'^[a-z0-9._-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?){1,3}$',
    );

    if (transformToLoweCase) {
      _email = _email.toLowerCase();
    }

    if (regex.hasMatch(_email)) {
      return null;
    } else {
      return errorMessage;
    }
  }

  static String validatePassword(
    String password, {
    String errorEmptyMessage = Strings.valitadorInsertPassword,
    String errorMessage = Strings.valitadorInsertValidPassword,
  }) {
    if (password.trim().length >= 6) {
      return null;
    } else if (password.trim().isEmpty) {
      return errorEmptyMessage;
    } else {
      return errorMessage;
    }
  }
}

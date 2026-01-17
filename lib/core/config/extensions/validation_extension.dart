
import 'package:skill_swap_app/core/config/constants/app_strings.dart';

extension ValidationExt on String? {
  String? get isNotEmptyField {
    final trimmed = this?.trim();

    if (trimmed == null || trimmed.isEmpty) {
      return AppStrings.fieldCanNotBeEmpty;
    }
    return null;
  }

  String? get isValidEmail {
    final trimmed = this?.trim();

    if (trimmed == null || trimmed.isEmpty) {
      return AppStrings.fieldCanNotBeEmpty;
    }
    // Check if the entered email has the right format
    else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(this!)) {
      return AppStrings.enterValidEmail;
    }
    return null;
  }

  String? get isValidPassword {
    final trimmed = this?.trim();
    final hasLetter = RegExp(r'[A-Za-z]').hasMatch(trimmed ?? '');
    final hasNumber = RegExp(r'\d').hasMatch(trimmed ?? '');

    if (trimmed == null || trimmed.isEmpty) {
      return AppStrings.passwordRequiredText;
    }

    if (!hasLetter || !hasNumber) {
      return AppStrings
          .passwordMustContainLettersAndNumberText;
    }
    return null;
  }

  String? get isValidEmailOrPhone {
    final trimmed = this?.trim();

    if (trimmed == null || trimmed.isEmpty) {
      return AppStrings.fieldCanNotBeEmpty;
    }
    final isEmail = RegExp(r'\S+@\S+\.\S+').hasMatch(trimmed);
    if (isEmail) {
      return null;
    } else {
      final isMobile = RegExp(r'^\d+$').hasMatch(trimmed);
      if (isMobile) {
        return null;
      }
    }
    return AppStrings.enterValidEmailOrPhone;
  }

  String? isValidConfirmationPassword(String password) {
    final trimmed = this?.trim();

    if (trimmed == null || trimmed.isEmpty) {
      return AppStrings.passwordRequiredText;
    }

    if (password != this) {
      return AppStrings.passwordNotMatch;
    }

    return null;
  }

  String? get isValidMobileNumber {
    final trimmed = this?.trim();
    if (trimmed == null || trimmed.isEmpty) {
      return AppStrings.phoneNumberRequired;
    }

    if (!RegExp(r'^\d+$').hasMatch(trimmed)) {
      return AppStrings.phoneNumberMustContainsOnlyNumbers;
    }

    return null;
  }

  String? get isValidOtpCode {
    final trimmed = this?.trim();
    if (trimmed == null || trimmed.isEmpty) {
      return AppStrings.verificationCodeRequired;
    }

    if (!RegExp(r'^\d+$').hasMatch(trimmed)) {
      return AppStrings.verificationCodeMustContainNumbers;
    }

    return null;
  }
}

/// mixin to check input validators
mixin InputValidationMixin {
  /// checks if provided password is valid
  bool isPasswordValid(String password) => password.length == 6;

  /// Checks if provided email is valid
  bool isEmailValid({required String email}) {
    /// define regEx pattern
    const String pattern = r"^[a-zA-Z\d.a-zA-Z!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z\d]+\.[a-zA-Z]{2,}$";

    /// define regular expression
    final RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  /// Check if provided phone number is valid
  bool isPhoneNumberValid({required String phoneNumber}) {
    /// define regEx pattern
    const String pattern = r'^\d{9,}$';

    /// define regular expression
    final RegExp regex = RegExp(pattern);
    return regex.hasMatch(phoneNumber);
  }
}

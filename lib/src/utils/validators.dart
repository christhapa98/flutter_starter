class Validators {
  final _phoneNumberRegExp = RegExp(
      r'^([0-9]( |-)?)?(\(?[0-9]{3}\)?|[0-9]{3})( |-)?([0-9]{3}( |-)?[0-9]{4}|[a-zA-Z0-9]{7})$');
  final _emailRegExp = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  String? validateEmail(String value) {
    if (!_emailRegExp.hasMatch(value.trim())) {
      return "Inavlid Email";
    }
    return null;
  }

  String? validatePhoneNumber(String value) {
    if (!_phoneNumberRegExp.hasMatch(value.trim())) {
      return "Invalid Phone Number";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.trim().isEmpty) {
      return "Password Empty";
    } else if (value.length <= 6) {
      return "Password Short";
    }
    return null;
  }
}

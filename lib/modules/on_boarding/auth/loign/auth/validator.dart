String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return "Please Enter Name";
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return "Please Enter Email";
  }
  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
    return "Please Enter a valid Email address";
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return "Please Enter password";
  }
  if (value.length < 6) {
    return "Password must be 6 characters";
  }
  return null;
}

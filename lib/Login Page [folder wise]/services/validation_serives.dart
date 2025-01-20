class ValidationSerives {
  static String ValidationInput(String username, String password) {
    if (username.isEmpty) {
      return "username cannot be empty";
    }
    if (password.isEmpty) {
      return "password cannot be empty";
    }
    return '';
  }
}

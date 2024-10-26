class Api {
  static bool authenticate(String username, String password) {
    if ((username == 'admin' && password == 'admin123') ||
        (username == 'user' && password == 'user123') ||
        (username == 'superadmin' && password == 'superadmin123')) {
      return true;
    }
    return false;
  }
}

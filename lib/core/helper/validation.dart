class AppValidator {
  /// validate email
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    }

    // basic email pattern
    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");

    if (!emailRegex.hasMatch(value.trim())) {
      return 'من فضلك أدخل بريد إلكتروني صحيح';
    }

    return null;
  }

  /// validate password
  static String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'الرقم السري مطلوب';
    }

    if (value.length < 6) {
      return 'الرقم السري يجب أن يكون 6 أحرف على الأقل';
    }

    return null;
  }

  /// validate Age
  static String? validateAge(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'العمر مطلوب';
    }

    if (int.tryParse(value.trim()) == null) {
      return "من فضلك أدخل عمر صحيح";
    }

    return null;
  }

  /// validate Age
  static String? validateCity(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'المحافظة مطلوبة';
    }

    return null;
  }
}

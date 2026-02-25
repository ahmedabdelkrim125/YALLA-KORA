import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';

import '../theme/app_colors.dart';
import '../theme/text_styles.dart';

enum DialogType { error, success, warning, info }

class ModernDialog {
  static Future<void> show({
    required BuildContext context,
    required DialogType type,
    required String title,
    required String message,
    String? primaryButtonText,
    String? secondaryButtonText,
    VoidCallback? onPrimaryPressed,
    VoidCallback? onSecondaryPressed,
    bool barrierDismissible = true,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r(context)),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: _DialogContent(
          type: type,
          title: title,
          message: message,
          primaryButtonText: primaryButtonText,
          secondaryButtonText: secondaryButtonText,
          onPrimaryPressed: onPrimaryPressed,
          onSecondaryPressed: onSecondaryPressed,
        ),
      ),
    );
  }

  // Quick error dialog
  static Future<void> showError({
    required BuildContext context,
    required String message,
    String title = 'خطأ',
    String buttonText = 'حسناً',
    VoidCallback? onPressed,
  }) {
    return show(
      context: context,
      type: DialogType.error,
      title: title,
      message: message,
      primaryButtonText: buttonText,
      onPrimaryPressed: onPressed,
    );
  }

  // Quick success dialog
  static Future<void> showSuccess({
    required BuildContext context,
    required String message,
    String title = 'نجح',
    String buttonText = 'حسناً',
    VoidCallback? onPressed,
  }) {
    return show(
      context: context,
      type: DialogType.success,
      title: title,
      message: message,
      primaryButtonText: buttonText,
      onPrimaryPressed: onPressed,
    );
  }

  // Quick warning dialog
  static Future<void> showWarning({
    required BuildContext context,
    required String message,
    String title = 'تحذير',
    String buttonText = 'حسناً',
    VoidCallback? onPressed,
  }) {
    return show(
      context: context,
      type: DialogType.warning,
      title: title,
      message: message,
      primaryButtonText: buttonText,
      onPrimaryPressed: onPressed,
    );
  }

  // Confirmation dialog
  static Future<void> showConfirmation({
    required BuildContext context,
    required String title,
    required String message,
    String confirmText = 'تأكيد',
    String cancelText = 'إلغاء',
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    DialogType type = DialogType.warning,
  }) {
    return show(
      context: context,
      type: type,
      title: title,
      message: message,
      primaryButtonText: confirmText,
      secondaryButtonText: cancelText,
      onPrimaryPressed: onConfirm,
      onSecondaryPressed: onCancel,
    );
  }
}

class _DialogContent extends StatelessWidget {
  final DialogType type;
  final String title;
  final String message;
  final String? primaryButtonText;
  final String? secondaryButtonText;
  final VoidCallback? onPrimaryPressed;
  final VoidCallback? onSecondaryPressed;

  const _DialogContent({
    required this.type,
    required this.title,
    required this.message,
    this.primaryButtonText,
    this.secondaryButtonText,
    this.onPrimaryPressed,
    this.onSecondaryPressed,
  });

  Color _getMainColor() {
    switch (type) {
      case DialogType.error:
        return const Color(0xFFFF4444); // أحمر
      case DialogType.success:
        return AppColors.primaryGreen; // الأخضر الأساسي
      case DialogType.warning:
        return const Color(0xFFFFAA00); // برتقالي/أصفر
      case DialogType.info:
        return const Color(0xFF00A8FF); // أزرق
    }
  }

  Color _getLightColor() {
    switch (type) {
      case DialogType.error:
        return const Color(0xFFFF4444).withOpacity(0.15);
      case DialogType.success:
        return AppColors.primaryGreen.withOpacity(0.15);
      case DialogType.warning:
        return const Color(0xFFFFAA00).withOpacity(0.15);
      case DialogType.info:
        return const Color(0xFF00A8FF).withOpacity(0.15);
    }
  }

  IconData _getIcon() {
    switch (type) {
      case DialogType.error:
        return Icons.error_outline_rounded;
      case DialogType.success:
        return Icons.check_circle_outline_rounded;
      case DialogType.warning:
        return Icons.warning_amber_rounded;
      case DialogType.info:
        return Icons.info_outline_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.responsivePadding(all: 24),
      decoration: BoxDecoration(
        color: AppColors.darkBackground,
        borderRadius: BorderRadius.circular(20.r(context)),
        border: Border.all(
          color: AppColors.fieldBorder.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icon Container
          Container(
            width: 64.w(context),
            height: 64.w(context),
            decoration: BoxDecoration(
              color: _getLightColor(),
              shape: BoxShape.circle,
            ),
            child: Icon(
              _getIcon(),
              color: _getMainColor(),
              size: 36.w(context),
            ),
          ),
          SizedBox(height: 20.h(context)),

          // Title
          Text(
            title,
            style: TextStyles.boldWhite20,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h(context)),

          // Message
          Text(
            message,
            style: TextStyles.regularWhite14.copyWith(
              color: AppColors.lightText,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h(context)),

          // Buttons
          Row(
            children: [
              if (secondaryButtonText != null) ...[
                Expanded(
                  child: _SecondaryButton(
                    text: secondaryButtonText!,
                    onPressed: () {
                      Navigator.of(context).pop();
                      onSecondaryPressed?.call();
                    },
                  ),
                ),
                SizedBox(width: 12.w(context)),
              ],
              Expanded(
                child: _PrimaryButton(
                  text: primaryButtonText ?? 'حسناً',
                  color: _getMainColor(),
                  onPressed: () {
                    Navigator.of(context).pop();
                    onPrimaryPressed?.call();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const _PrimaryButton({
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: AppColors.darkBackground,
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 14.h(context)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r(context)),
        ),
      ),
      child: Text(text, style: TextStyles.boldDarkBackground18),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _SecondaryButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 14.h(context)),
        side: BorderSide(
          color: AppColors.fieldBorder.withOpacity(0.3),
          width: 1.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r(context)),
        ),
      ),
      child: Text(text, style: TextStyles.mediumWhite14),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:yalla_kora/features/home/ui/widgets/load_more_bt.dart';

import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';

class LoadMoreFooter extends StatelessWidget {
  const LoadMoreFooter({super.key, required this.isLoading, required this.isError, this.errorMessage, required this.onLoadMore});

  final bool isLoading;
  final bool isError;
  final String? errorMessage;
  final VoidCallback onLoadMore;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Padding(
        padding: context.responsivePadding(vertical: 20),
        child: const Center(
          child: CircularProgressIndicator(color: AppColors.primaryGreen,),
        ),
      );
    }

    if(isError){
      return Padding(
        padding: context.responsivePadding(vertical: 8),
        child: Column(
          children: [
            Text(
              errorMessage ?? 'حدث خطأ، حاول مرة أخرى',
              style: TextStyles.regularGrey12,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.h(context)),
            TextButton(
              onPressed: onLoadMore,
              child: Text(
                'إعادة المحاولة',
                style: TextStyles.mediumWhite14.copyWith(
                  color: AppColors.primaryGreen,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: context.responsivePadding(vertical: 8, horizontal: 40),
      child: LoadMoreButton(onPress: onLoadMore),
    );
  }
}

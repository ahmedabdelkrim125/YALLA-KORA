import 'package:flutter/material.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';

class NearFacilitiesHeader extends StatelessWidget {
  const NearFacilitiesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("الملعب القريبة منك", style: TextStyles.boldWhite16,),
          Text("عرض الكل", style: TextStyles.regularWhite14,),
        ],
      ),
    );
  }
}

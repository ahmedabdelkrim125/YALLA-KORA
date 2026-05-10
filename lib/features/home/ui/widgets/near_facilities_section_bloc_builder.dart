import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/widgets/error_widget.dart';
import 'package:yalla_kora/features/home/logic/near_facilities/near_facilities_cubit.dart';
import 'package:yalla_kora/features/home/ui/widgets/fields_carousel.dart';
import '../../../../core/constants/dummy_data.dart';
import '../../../../core/widgets/cards/field_card.dart';
import '../../data/near_facilities/model/field_model.dart';

class NearFacilitiesSection extends StatelessWidget {
  const NearFacilitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NearFacilitiesCubit, NearFacilitiesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => _FieldsCarouselSkeleton(fields: dummyFields,),
          success: (fields) => FieldsCarousel(fields: fields),
          failure: (error) => CustomErrorWidget(
            message: error.apiErrorModel.message,
            onRetry: () => context
                .read<NearFacilitiesCubit>()
                .emitNearFacilitiesStates(),
          ),
        );
      },
    );
  }
}

class _FieldsCarouselSkeleton extends StatelessWidget {
  const _FieldsCarouselSkeleton({required this.fields});
  final List<FieldModel> fields;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
        child: Skeletonizer(
          effect: ShimmerEffect(
            baseColor: AppColors.cardBg2,
            highlightColor: AppColors.primaryGreen,
            duration: const Duration(seconds: 1),
          ),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: fields.length > 5 ? 5 : fields.length,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (context, i) => FieldCard(field: fields[i], isHorizontal: true),),
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/features/home/logic/near_facilities/near_facilities_cubit.dart';
import 'package:yalla_kora/features/home/ui/widgets/custom_app_bar.dart';
import 'package:yalla_kora/features/home/ui/widgets/load_more_footer.dart';

import '../../../core/helper/extensions.dart';
import '../../../core/helper/responsive_extensions.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/cards/field_card.dart';
import '../data/near_facilities/model/field_model.dart';

class ViewAllFieldsScreen extends StatelessWidget {
  const ViewAllFieldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(text: 'جميع الملاعب',),
        body: BlocBuilder<NearFacilitiesCubit, NearFacilitiesState>(
          builder: (context, state) {
            final currFields = state.maybeWhen(
              success: (data, _, __, ___, ____) => data,
              orElse: () => <FieldModel>[]
            );
            final isLoadingMore = state.maybeWhen(
              success: (_, ____, isLoadingMore, __, ___) => isLoadingMore,
              orElse: () => false,
            );
            final hasError = state.maybeWhen(
              success: (_, ____, __, hasError, ___) => hasError,
              orElse: () => false,
            );
            final errorMessage = state.maybeWhen(
              success: (_, ____, __, ___, errorHandler) =>
              errorHandler?.apiErrorModel.message,
              orElse: () => null,
            );
            final totalFields = state.maybeWhen(
              success: (data, total, __, ___, ____) => total,
                orElse: () => 0
            );

            return ListView.separated(
              padding: context.responsivePadding(horizontal: 20, top: 20, bottom: 24),
              physics: const BouncingScrollPhysics(),
              itemCount: currFields.length + 1, // +1 for footer
              separatorBuilder: (context, i) => SizedBox(height: 14.h(context),),
              itemBuilder: (context, i) {
                if (i == currFields.length) {
                  if (currFields.length >= totalFields) return const SizedBox.shrink();
                  return LoadMoreFooter(
                      isLoading: isLoadingMore,
                      isError: hasError,
                      errorMessage: errorMessage,
                      onLoadMore: () => context.read<NearFacilitiesCubit>().emitNearFacilitiesStates()
                  );
                }

                return GestureDetector(
                  onTap: () {
                    context.pushNamed(
                      Routes.facilityDetails, arguments: currFields[i]);
                  }, child: FieldCard(field: currFields[i])
                );
              },
            );
          }
        ),
      ),
    );
  }
}

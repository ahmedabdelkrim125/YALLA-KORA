import 'package:flutter/material.dart';
import 'package:yalla_kora/core/models/football-field-model/football_field_model.dart';
import 'package:yalla_kora/features/home/ui/widgets/custom_app_bar.dart';

import '../../../core/helper/extensions.dart';
import '../../../core/helper/responsive_extensions.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/cards/field_card.dart';

class ViewAllFieldsScreen extends StatelessWidget {
  const ViewAllFieldsScreen({super.key, required this.fields});

  final List<FootballFieldModel> fields;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(text: 'جميع الملاعب',),
        body: ListView.separated(
          padding: context.responsivePadding(horizontal: 20, top: 20),
          physics: const BouncingScrollPhysics(),
          itemCount: fields.length,
          separatorBuilder: (context, i)=> SizedBox(height: 14.h(context),),
          itemBuilder: (context, i) => GestureDetector(
            onTap:(){
              context.pushNamed(Routes.facilityDetails);
            }, child: FieldCard(field: fields[i])),
          ),
      ),
    );
  }
}


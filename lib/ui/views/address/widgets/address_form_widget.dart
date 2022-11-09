import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/themes/app_style.dart';
import '../../../widgets/base_text_field.dart';

class AddressFormWidget extends StatelessWidget {
  const AddressFormWidget(
      {required this.title, required this.controller, required this.hintText, this.maxLine});

  final String title;
  final TextEditingController controller;
  final String hintText;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyle.subtitle16.copyWith(
              color: const Color(0xFF78828A),
            ),
          ),
          const SizedBox(
            height: AppConst.defaultMediumMargin12,
          ),
          SizedBox(
            height: 50.0*(maxLine ?? 1),
            child: TextField(
              decoration: getInputDecorationCommon(context).copyWith(hintText: hintText),
              maxLines: maxLine,
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.only(bottom: 24),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/themes/app_style.dart';
import '../../../../widgets/base_text_field.dart';

class EditProfileField extends StatelessWidget {
  const EditProfileField(
      {required this.controller, required this.title, this.maxLine});

  final String title;
  final TextEditingController controller;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyle.subtitle18.copyWith(
              color: const Color(0xFF78828A),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            child: TextField(
              decoration: getInputDecorationCommon(context),
              controller: controller,
              maxLines: maxLine,
            ),
          )
        ],
      ),
    );
  }
}

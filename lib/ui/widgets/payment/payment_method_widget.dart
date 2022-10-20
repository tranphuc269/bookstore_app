import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_style.dart';

class PaymentMethodElement extends StatelessWidget {
  const PaymentMethodElement(
      {required this.isChecked, required this.name});

  final bool isChecked;
  final String name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            color: Colors.black12,
            height: 1 / 2,
          ),
          Container(
            height: 4,
          ),
          Row(
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isChecked ? AppColors.systemBlack : AppColors.white,
                  border: Border.all(color: AppColors.systemBlack, width: 1 * 0.5),
                ),
                child: const Icon(
                  Icons.check,
                  size: 12,
                  color: AppColors.white,
                ),
              ),
              Container(
                width: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 16),
                width: 78,
                height: 40,
                // child: CachedImage(
                //   url: paymentMethod.icon,
                // ),
              ),
              Container(
                width: 8,
              ),
              SizedBox(
                width: 230,
                height: 40,
                child: Align(
                  child: Text(
                    name,
                    style: AppStyle.subtitle14
                  ),
                  alignment: Alignment.centerLeft,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/app/app_constant.dart';
import '../../../core/themes/app_style.dart';
import '../../../data/dummy/product_dummy.dart';
import '../cached_image.dart';

class CartItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 160,
      margin: const EdgeInsets.only(bottom: AppConst.defaultMediumMargin),
      child: Row(
        children: [
          CachedImage(
            url: ProductDummy.products[0],
            borderRadius: BorderRadius.circular(8),
          ),
          Padding(
            padding: AppConst.kPaddingMediumDefault,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conan tập tập 11',
                  style: AppStyle.subtitle18.copyWith(
                    color: const Color(0xFF36596A),
                  ),
                ),
                const SizedBox(
                  height: AppConst.defaultMediumMargin,
                ),
                RichText(
                  text: TextSpan(
                    text: '30,000đ',
                    style: AppStyle.subtitle16
                        .copyWith(color: const Color(0xFFFF8236)),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: AppConst.kPaddingMediumDefaultVertical,
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Ionicons.trash_outline)),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: const Icon(Ionicons.remove_outline, size: 18,),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                          child: Text('1', style: AppStyle.subtitle16,),
                          alignment: Alignment.center,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: const Icon(Ionicons.add_outline, size: 18,),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

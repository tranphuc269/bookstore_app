import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/app/app_constant.dart';
import '../../../../core/localization/language_const.dart';
import '../../../../core/themes/app_style.dart';
import '../../../../data/dummy/producer_dummy.dart';
import '../../../../data/models/response/producer/producer_data.dart';
import '../../../widgets/preview_producer_widget/preview_producer_widget.dart';

class HomeProducer extends StatelessWidget {
  const HomeProducer({required this.producer});

  final List<ProducerData> producer;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: AppConst.kPaddingMediumDefault,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                International.producer.tr,
                style: AppStyle.subtitle16,
              ),
              Text(
                International.all.tr,
                style: AppStyle.link,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppConst.defaultMediumMargin),
            child: SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  producer.length,
                  (index) => PreviewProducerWidget(
                    data: producer[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

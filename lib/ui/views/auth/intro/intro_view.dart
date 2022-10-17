import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../core/database/get_storage/get_storage_key.dart';
import '../../../../core/database/get_storage/get_storage_manager.dart';
import '../../../../core/localization/language_const.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_style.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);
  static const String route = '/intro';

  @override
  Widget build(BuildContext context) {
    final introKey = GlobalKey<IntroductionScreenState>();
    const bodyStyle = TextStyle(fontSize: 19);

    final pageDecoration = PageDecoration(
      titleTextStyle: AppStyle.subtitle16
          .copyWith(fontSize: 26, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        // PageViewModel(
        //   title: 'Skybase',
        //   image: _buildImage('img_pv_1.png'),
        //   decoration: pageDecoration,
        //   bodyWidget: Column(
        //     children: [
        //       const SizedBox(height: 12),
        //       Text('Created by', style: AppStyle.subtitle4,),
        //       Text('Varcant', style: AppStyle.subtitle3.copyWith(fontWeight: FontWeight.bold)),
        //       Text('nanda.kista@gmail.com', style: TextStyle(fontWeight: AppStyle.semiBold)),
        //     ],
        //   ),
        // ),
        // PageViewModel(
        //   title: 'Skybase',
        //   image: _buildImage('img_pv_2.png'),
        //   decoration: pageDecoration,
        //   bodyWidget: Column(
        //     children: [
        //       const SizedBox(height: 12),
        //       Text('Created by', style: AppStyle.subtitle4,),
        //       Text('Varcant', style: AppStyle.subtitle3.copyWith(fontWeight: FontWeight.bold)),
        //       Text('nanda.kista@gmail.com', style: TextStyle(fontWeight: AppStyle.semiBold)),
        //     ],
        //   ),
        // ),
        // PageViewModel(
        //   title: 'Skybase',
        //   image: _buildImage('img_pv_3.png'),
        //   decoration: pageDecoration,
        //   bodyWidget: Column(
        //     children: [
        //       const SizedBox(height: 12),
        //       Text('Created by', style: AppStyle.subtitle4,),
        //       Text('Varcant', style: AppStyle.subtitle3.copyWith(fontWeight: FontWeight.bold)),
        //       Text('nanda.kista@gmail.com', style: TextStyle(fontWeight: AppStyle.semiBold)),
        //     ],
        //   ),
        // ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text(International.skip.tr,
          style: AppStyle.subtitle16
              .copyWith(color: AppColors.primary, fontWeight: FontWeight.bold)),
      next: const Icon(
        Icons.arrow_forward,
        color: AppColors.primary,
      ),
      done: Text(International.done.tr,
          style: AppStyle.subtitle16.copyWith(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Color(0xFFBDBDBD),
        activeColor: AppColors.primary,
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
    );
  }

  Future<void> _onIntroEnd(context) async {
    GetStorageManager.find.save(GetStorageKey.FIRST_INSTALL, false);
    // Get.offAllNamed(LoginView.route);
  }

  Widget _buildImage(String assetName, [double width = 250]) {
    return Image.asset('assets/images/$assetName', width: width);
  }
}
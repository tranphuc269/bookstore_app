import 'package:flutter/cupertino.dart';

import '../../../../widgets/cached_image.dart';

class EditProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: 120,
            height: 120,
            child: CachedImage(
              borderRadius: BorderRadius.circular(50),
              url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiSvaLtaapcpwkXbwmOHGwBT5V8np1btjKzIALKwnropvXVwRggFIEH6LFEeIBrJwVwPA&usqp=CAU',
            ),
          ),
          Positioned.fill(
            child: Align(
              child: Image.asset(
                'assets/icons/ic_edit_image.png',
                width: 40,
                height: 40,
              ),
              alignment: Alignment.bottomRight,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackWidget extends StatelessWidget {
  const BackWidget();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: const Icon(CupertinoIcons.back, color: Colors.black, size: 24,),
      onTap: (){
        print('Navigator.of(context).pop()');
        Navigator.of(context).pop();
      },
    );
  }
}

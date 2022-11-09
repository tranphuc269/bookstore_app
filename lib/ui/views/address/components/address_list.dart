import 'package:flutter/cupertino.dart';
import '../../../widgets/address_widget.dart';

class AddressList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      shrinkWrap: true,
      children:[
        const SizedBox(height: 32,),
        ...List.generate(
          4,
              (index) => AddressWidget(),
        )
      ],
    );
  }
}

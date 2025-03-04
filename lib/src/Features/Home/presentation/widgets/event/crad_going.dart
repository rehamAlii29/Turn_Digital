import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';

class CardGoing extends StatelessWidget {
  final int index;
  final String image;

  const CardGoing({
    super.key,
    required this.index,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: index * 20.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: ImageGeneric.network(
          url: image,
          options: const ImageOptions(
            radius: 33,
            fit: BoxFit.cover,
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/event/card_book_mark.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/event/card_date.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';

class CardImageEvent extends StatelessWidget {
  final String date;
  final String image;

  const CardImageEvent({super.key, required this.date, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 218.toW(),
      child: Stack(
        children: [
          ImageGeneric.network(
            url: image,
            options: ImageOptions(
                fit: BoxFit.cover,
                borderRadius: BorderRadius.circular(10.toRad())),
          ),
          Padding(
            padding: EdgeInsets.all(8.toH()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardDate(
                  date: date,
                ),
                const CardBookMark()
              ],
            ),
          )
        ],
      ),
    );
  }
}

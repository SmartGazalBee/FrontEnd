import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/widgets/home_widgets/custom_more.dart';
import 'package:smartgazalbee/models/widgets/home_widgets/custom_notice_board_container.dart';
import 'package:smartgazalbee/models/widgets/custom_text.dart';

class CustomMainNoticeBoardWidgets extends StatelessWidget {
  final String nameWrite;

  const CustomMainNoticeBoardWidgets({
    required this.nameWrite
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomText(titleWrite: nameWrite, titleSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CustomMore(),
            ),
          ],
        ),
        CustomNoticeBoardContainer()
      ],
    );
  }
}

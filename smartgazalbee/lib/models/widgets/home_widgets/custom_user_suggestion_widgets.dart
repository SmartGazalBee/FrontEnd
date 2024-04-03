import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/widgets/custom_container.dart';
import 'package:smartgazalbee/models/widgets/custom_text.dart';

class CustomUserSuggestionWidgets extends StatelessWidget {
  final double _height = 140;
  final double _width = 140;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CustomText(titleWrite: "20대 남성이 많이 요청한 모델",titleSize: 16),
        ),
        SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomContainer(SizeHeight: _height,SizeWidth: _width),
              CustomContainer(SizeHeight: _height,SizeWidth: _width),
              CustomContainer(SizeHeight: _height,SizeWidth: _width),
              CustomContainer(SizeHeight: _height,SizeWidth: _width),
              CustomContainer(SizeHeight: _height,SizeWidth: _width),
              CustomContainer(SizeHeight: _height,SizeWidth: _width),
            ],
          ),
        ),
      ],
    );
  }
}

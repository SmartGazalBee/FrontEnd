import 'package:flutter/material.dart';
import 'package:smartgazalbee/models/widgets/custom_tag_block.dart';

class CustomTagScrollView extends StatelessWidget {
  final double total;

  const CustomTagScrollView({
    required this.total
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:[
              CustomTagBlock(size: total, text: "SK 통신사", textSize: total-2,),
              CustomTagBlock(size: total, text: "실버 256GB", textSize: total-2,),
              CustomTagBlock(size: total, text: "34 요금제", textSize: total-2,),
              CustomTagBlock(size: total, text: "24개월 약정", textSize: total-2,)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartgazalbee/constants.dart';

class CustomSearchProviderPost extends StatelessWidget {
  final String hint;
  final funValidator;
  final String? value;
  final TextEditingController? controller;

  const CustomSearchProviderPost({
    required this.hint,
    required this.funValidator,
    this.value,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.03 + 10,
          width: double.infinity,
          child: TextFormField(
            controller: controller,
            initialValue: value,
            validator: funValidator,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              filled: true,
              fillColor: AppColor.greyBack,
              hintText: "$hint",
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Pretendard",
                  color: AppColor.greyText
              ),
              prefixIcon: IconButton(
                icon: SvgPicture.asset("assets/icons/search.svg"),
                color: AppColor.greyText,
                onPressed: (){},
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.greyBack, width: 0.2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.greyBack, width: 0.2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.greyBack, width: 0.2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.greyText, width: 0.2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

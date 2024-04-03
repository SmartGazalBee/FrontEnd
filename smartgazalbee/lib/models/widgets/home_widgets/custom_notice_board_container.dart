import 'package:flutter/material.dart';
import 'package:smartgazalbee/constants.dart';


class CustomNoticeBoardContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: screenHeight * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.shadow,
                blurRadius: 10,
              )
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,0,10,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("03/20",
                    style: TextStyle(
                      color: AppColor.text,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text("18:10",
                    style: TextStyle(
                      color: AppColor.text,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Row(
                  children: [
                    Text("요청금액",
                      style: TextStyle(
                        color: AppColor.text,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(" 50만원",
                      style: TextStyle(
                        color: AppColor.text,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Text("26",
                style: TextStyle(
                  color: AppColor.text,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

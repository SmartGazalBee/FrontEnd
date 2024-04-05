import 'package:flutter/material.dart';
import 'package:smartgazalbee/constants.dart';

class UserProfileContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.greyText,width: 0.5),
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                      color: AppColor.shadow,
                      blurRadius: 3)]
            ),
            child: Icon(Icons.person,color: AppColor.text,),
          ),
          SizedBox(width: 7,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ehdgus0734",
                style: TextStyle(
                  color: AppColor.text,
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w300,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 1,),
              Row(
                children: [
                  Text("03/22",
                      style: TextStyle(
                        color: AppColor.text,
                        fontFamily: "Pretendard",
                        fontWeight: FontWeight.w300,
                        fontSize: 8,
                      )
                  ),
                  SizedBox(width: 5,),
                  Text("09:07",
                      style: TextStyle(
                        color: AppColor.text,
                        fontFamily: "Pretendard",
                        fontWeight: FontWeight.w300,
                        fontSize: 8,
                      )
                  ),
                ],
              )
            ],
          ),
        ]
    );
  }
}

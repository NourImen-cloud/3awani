import 'package:flutter/material.dart';
import 'package:project/themes/style_simple/colors.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

          //  TITLES
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Our Categories',
                  style: TextStyle(
                    color: AppColors.mediumGreenText,
                    fontWeight: FontWeight.bold,
                  ) ,),
                GestureDetector(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('see all',
                            style:TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                            )),
                        SizedBox(width: 5),
                        Image.asset('assets/icons/chevron-down-green.png', width: 22, height: 22)
                      ]
                  ),
                )
              ]
          ),

          SizedBox(height: 10),

          // CATEGORIES

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getCategory('Builders','purple'),
                  getCategory('Cake chef','blue'),
                  getCategory('Stylists','red'),
                ]
            ),
          )
        ]
    );
  }

  Widget getCategory(String title,String color){
    Color borderColor =  AppColors.purpleStroke;
    Color fillColor = AppColors.purpleFill;
    if(color == 'red'){
      borderColor =  AppColors.redStroke;
      fillColor = AppColors.redFill;
    }else if(color == 'blue'){
      borderColor =  AppColors.blueStroke;
      fillColor = AppColors.blueFill;
    }
    return GestureDetector(
      child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.only(left:5, right:10, top: 5, bottom: 5),
          decoration: BoxDecoration(
              color: fillColor,
              borderRadius: BorderRadius.circular(27),
              border: Border.all(
                  width: 1,
                  color: borderColor
              )
          ),
          child: Row(
            children: [
              Image.asset('assets/icons/profile-2user-purple.png', width: 24),
              SizedBox(width: 5),
              Text(title)
            ],

          )
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project/themes/style_simple/colors.dart';

class PopularServices extends StatefulWidget {
  const PopularServices({super.key});

  @override
  State<PopularServices> createState() => _PopularServicesState();
}

class _PopularServicesState extends State<PopularServices> {
  @override
  Widget build(BuildContext context) {

    return Column(

        children: [
          //  TITLES
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Our Popular Services',
                  style: TextStyle(
                    color: AppColors.mediumGreenText,
                    fontWeight: FontWeight.bold,
                  )
                ),
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
                  getCategoryFilter('All',true),
                  getCategoryFilter('Artisana',false),
                  getCategoryFilter('Local services',false),
                  getCategoryFilter('Small businesses',false)

                ]
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getPopularServiceCard('Stylist','alger','assets/images/stylist.png'),
                  getPopularServiceCard('Builder','cheraga','assets/images/builder.png'),

                ]
            ),
          )
        ]
    );
  }

  Widget getPopularServiceCard(String service,String location,String image_link){

    return GestureDetector(
      child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(15),

          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(-2, 0),
              ),],
              borderRadius: BorderRadius.circular(23),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(image_link),
                  Positioned(
                    bottom: 80,
                    left: 180,
                    child: Image.asset('assets/icons/favourite.png'),


                  ),
                ],
              ),


              Text(service,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColors.mediumGreen,
              )),

              // location row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/icons/location.png'),
                  SizedBox(width: 5),
                  Text(location,
                  style: TextStyle(
                      fontSize: 10,
                      color: AppColors.greyText
                  ))
                ],
              ),

              SizedBox(height: 5),

              // reviews and stars
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('4.9',
                      style: TextStyle(
                        color: AppColors.mediumGreen,
                        fontSize: 12
                      )),
                  SizedBox(width: 4),
                  Image.asset('assets/icons/stars.png'),
                  SizedBox(width: 7),
                  Text('(108 reviews)',
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.greyText
                  ))
                ],
              ),

              SizedBox(height: 8),

              // distance/time + experience
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/icons/routing.png'),
                      SizedBox(width: 4),
                      Text('1km/9min',style:
                      TextStyle(
                          fontSize: 10,
                          color: AppColors.greyText
                      )
                      )
                    ],
                  ),
                  SizedBox(width: 50),
                  Text('8 years of experience',
                      style: TextStyle(
                          fontSize: 10,
                          color: AppColors.greyText
                      )),
                ],
              )
            ],

          )
      ),
    );
  }

  Widget getCategoryFilter(String title, bool active){
    return GestureDetector(
      onTap:(){

      },
      child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.only(right:10, left:10, top:4, bottom: 4),
          decoration: BoxDecoration(
              color: active? AppColors.darkGreenText: Colors.white ,
              borderRadius: BorderRadius.circular(27),
              border: Border.all(
                  width: 1,
                  color: active? Colors.white : AppColors.darkGreenText,
              )
          ),
          child:
              Text(title, style: TextStyle(
                fontWeight: FontWeight.bold,
                color: active? Colors.white: AppColors.darkGreenText ,
              )),

          )
      );

  }
  }



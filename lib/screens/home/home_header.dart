import 'package:flutter/material.dart';
import 'package:project/themes/style_simple/colors.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  final TextEditingController _searchController = TextEditingController();
  bool _hasText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28)
            ),
            gradient: LinearGradient(
                colors: [AppColors.startGreen, AppColors.endGreen]
            )
        ),

        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              getHeaderUp(),
              SizedBox(height: 8,),
              getSearchBar()
            ]
        )
      // welcome home and search bar and profile pic
    );
  }


Widget getHeaderUp(){
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

        // WELCOME

                Text('Welcome',
                  style: TextStyle(
                    fontFamily: 'RubikDoodleShadow',
                    fontSize: 30,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,

                  ),

                ),
                SizedBox(height: 10),

        // HOME

                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/home-icon.png',
                        width: 24,
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Home',
                            style:
                            TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      )
                    ]
                ),


              ]
          ),

    // WELCOME PIC

          Image.asset('assets/images/welcome.png', width: 50, height: 50,)
        ]
    );
}

Widget getSearchBar(){
  return Container(
    height: MediaQuery.of(context).size.height * 0.06,
    padding: EdgeInsets.only(
        bottom: 3,
        top: 3,
        right: 15,
        left: 15
    ),

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),

    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset('assets/icons/search.png'),
        SizedBox(width: 12),


        Expanded(
          child: TextField(
            controller: _searchController,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              color: AppColors.darkGreenText,
              fontSize: 14,
            ),

            decoration: InputDecoration(
              hintText: 'Search For Local Service',
              hintStyle: TextStyle(
                color: AppColors.greyText,
                fontSize: 14,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              isDense: true,
            ),
          ),
        ),
        if (_hasText)
          IconButton(
            icon: Icon(
              Icons.clear,
              color: AppColors.greyText,
              size: 20,
            ),
            onPressed: (){},
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
          ),
      ],
    ),
  );
}
}
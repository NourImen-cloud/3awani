import 'package:flutter/material.dart';
import 'package:project/themes/style_simple/colors.dart';
import 'package:project/screens/Community/CommunityScreen.dart';
import 'package:project/screens/Search/profile_card.dart';
import 'package:project/screens/home/home_page.dart';



// notes:
// we need to add a var to control which screen we are in
// from the four screens
// so we can edit the color for each one

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 60,
    decoration: BoxDecoration(
    color: AppColors.bottomBarBackground,

    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      GestureDetector(
        onTap: (){
       Navigator.of(context).push(MaterialPageRoute(builder:(context)=>HomePage()));
        },
        child: Image.asset('assets/icons/home-icon-nav.png',
            color: AppColors.endGreen,                      
            colorBlendMode: BlendMode.srcIn),
      ),
      GestureDetector(
        onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>ProfileCard()));
        },
        child: Image.asset('assets/icons/list-search.png',
            color: AppColors.endGreen, 
            colorBlendMode: BlendMode.srcIn),
      ),
      GestureDetector(
        onTap: () {
         Navigator.of(context).push(MaterialPageRoute(builder:(context)=>CommunityFeedScreen()));
        },
        child: Image.asset('assets/icons/community-icon-nav.png',
            color: AppColors.endGreen,
            colorBlendMode: BlendMode.srcIn),
      ),
      GestureDetector(
        onTap: () {
        
        },
        child: Image.asset('assets/icons/setting-icon-nav.png',
          color: AppColors.endGreen,
          colorBlendMode: BlendMode.srcIn),
      ),
    ],
    ),
    );
  }
}

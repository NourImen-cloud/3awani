import 'package:flutter/material.dart';
import 'package:project/themes/style_simple/colors.dart';
import 'package:project/screens/home/home_header.dart';
import 'package:project/screens/home/home_bottom_bar.dart';
import 'package:project/screens/home/widgets/welcome_cards.dart';
import 'package:project/screens/home/widgets/categories.dart';
import 'package:project/screens/home/widgets/popular_services.dart';
import 'package:project/screens/Search/profile_map.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeHeader(), // Sticks at top
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    WelcomeCards(),
                    SizedBox(height: 20),
                    getMapButton(),
                    SizedBox(height: 20),
                    Categories(),
                    SizedBox(height: 20),
                    PopularServices()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(), // Sticks at bottom
    );
  } // end of the build method



  Widget getMapButton(){
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>MapAndProfilesScreen()));

      },
      child: Container(

          padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
          decoration: BoxDecoration(

              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF0E4C4A), // Dark teal (0%)
                  Color(0xFF1C6868), // Medium teal (47%)
                  Color(0xFF2CB3AE), // Bright teal (100%)
                ],
                stops: [0.0, 0.47, 1.0],
              ),

              borderRadius: BorderRadius.circular(20)
          ),
          child: Row(

              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children : [
                      Image.asset('assets/icons/map-search.png', width: 22),
                      SizedBox(width: 10),
                      Text('search for provider in the map',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w100,

                          )),
                    ]
                ),
                Spacer(),
                Image.asset('assets/icons/chevron-down-white.png', width: 22, height: 22)
              ]
          )
      ),
    );
  }

}

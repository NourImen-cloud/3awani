import 'package:flutter/material.dart';
import 'screens/Opening/First.dart' ;
import 'screens/Search/profile_card.dart' ;
import 'screens/Search/profile_map.dart' ;
import 'screens/Community/CommunityScreen.dart' ;

import 'screens/Verification/OTPverification.dart' ;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:CommunityFeedScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
} 

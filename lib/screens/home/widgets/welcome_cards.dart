import 'package:flutter/material.dart';
import 'package:project/themes/style_simple/colors.dart';

class WelcomeCards extends StatefulWidget {
  const WelcomeCards({super.key});

  @override
  State<WelcomeCards> createState() => _WelcomeCardsState();
}

class _WelcomeCardsState extends State<WelcomeCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Banner.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Looking for local service in your house ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.endGreen
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Schedule an appointment with our top doctors.',
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 11,
                      color: AppColors.endGreen
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Image.asset('assets/images/excited_worker.png', width: 110),
        ],
      ),
    );
  }
}
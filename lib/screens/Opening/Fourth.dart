import 'package:flutter/material.dart';
import 'package:project/screens/Opening/Fifth.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            const Text(
              'و عنـدك الفـرصـة باش نتـا\n! تقّـدّم للـنّـاس خـدمـتـك',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF217D7B),
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),

            const SizedBox(height: 30),

           
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/OpeningPictures/Resume-rafiki 1.png',
                width: 190,
                height: 190,
              ),
            ),

            const SizedBox(height: 5),

            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/OpeningPictures/Image post-bro 1.png',
                width: 190,
                height: 190,
              ),
            ),

            const SizedBox(height: 40),

           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCircle(false),
                const SizedBox(width: 8),
                _buildCircle(false),
                const SizedBox(width: 8),
                _buildCircle(false),
                const SizedBox(width: 8),
                _buildCircle(true),
              ],
            ),

            const SizedBox(height: 40),

      
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const FifthScreen()),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF248986),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                'الـتّـالــي',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircle(bool isActive) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF248986) : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}

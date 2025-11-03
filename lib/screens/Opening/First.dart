import 'package:flutter/material.dart';
import 'Second.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              
              Image.asset(
                'assets/OpeningPictures/Live collaboration-rafiki 1.png',
                width: 200,
                height: 200,
              ),

              SizedBox(height: 30),

              Text(
                '!عـاوّنـي هنـا بـاش يعاونـكم ',
                style: TextStyle(
                  color: Color(0xFF217D7B), 
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                ' المكان الذي تجد فيه ما تبحث عنه من خدمات ويعطيك الفرصة لمشاركة خدماتك ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),

              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCircle(true),   
                  SizedBox(width: 8),
                  _buildCircle(false),
                  SizedBox(width: 8),
                  _buildCircle(false),
                  SizedBox(width: 8),
                  _buildCircle(false),
                ],
              ),

              SizedBox(height: 40),

              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF248986),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text(
                  'الـتّـالــي',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              
              SizedBox(height: 40),
            ],
          ),
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
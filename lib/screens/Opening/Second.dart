import 'package:flutter/material.dart';
import 'package:project/screens/Opening/Third.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
        
              // 3 images before text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/OpeningPictures/Electrician-bro.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/OpeningPictures/Live collaboration-rafiki 1.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/OpeningPictures/pastry chef-bro 1.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
        
              const SizedBox(height: 30),
        
              // Your custom text for SecondScreen
              const Text(
                'حرف و خدمات محليّة\nو مشاريع ناشئة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF217D7B),
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
        
              const SizedBox(height: 30),
        
              // 2 images after text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/OpeningPictures/Shopping bag-bro 1.png',
                    width: 110,
                    height: 110,
                  ),
                  const SizedBox(width: 15),
                  Image.asset(
                    'assets/OpeningPictures/Seamstress-bro.png',
                    width: 110,
                    height: 110,
                  ),
                ],
              ),
        
              const SizedBox(height: 50),
        
           
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCircle(false),
                  const SizedBox(width: 8),
                  _buildCircle(true),
                  const SizedBox(width: 8),
                  _buildCircle(false),
                  const SizedBox(width: 8),
                  _buildCircle(false),
                ],
              ),
        
              const SizedBox(height: 80),
        
              // Next button
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ThirdScreen()) ,),
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

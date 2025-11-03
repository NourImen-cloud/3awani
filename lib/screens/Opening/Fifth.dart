import 'package:flutter/material.dart';
import 'package:project/screens/Login/login_register_screen.dart' ;

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Column(
        children: [
      
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  Image.asset(
                    'assets/OpeningPictures/Selecting team-cuate 1.png',
                    height: 220,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                   ' ســجّـل و خـلّي عـاونّـي\n  يسـهّـلّـك حيـاتك ',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1B5E5E),
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF2C7A7A),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(24, 40, 24, 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    onPressed: () {
                             Navigator.push( context,
                             MaterialPageRoute(builder: (context) => const LoginRegisterScreen()),
                             );
                             },
                      child: const Text(
                        'تسجيل الدخول',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Color(0xFF2C7A7A),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF248986),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                     onPressed: () {
                     Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  LoginRegisterScreen()),
                                                                   );
                     },
                      child: const Text(
                        'فتح حساب',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
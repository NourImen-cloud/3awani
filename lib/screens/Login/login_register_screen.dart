import 'package:flutter/material.dart';
import 'package:project/screens/Verification/OTPverification.dart' ;

class LoginRegisterScreen extends StatefulWidget {
  const LoginRegisterScreen({super.key});

  @override
  State<LoginRegisterScreen> createState() => _LoginRegisterScreenState();
}

class _LoginRegisterScreenState extends State<LoginRegisterScreen> {
  bool isLogin = true;
  String selectedUserType = 'user';
  String selectedServiceType = '';
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -size.height * 0.25,
            right: -size.width * 0.5,
            child: Container(
              width: size.width * 1.05,
              height: size.width * 1.3,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 10, 86, 81),
              ),
            ),
          ),
          // 🟢 Background circles
          Positioned(
            top: -size.height * 0.25,
            left: -size.width * 0.25,
            child: Container(
              width: size.width * 1.1,
              height: size.width * 1.3,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF248986),
              ),
            ),
          ),
          Positioned(
            top: -size.height * 0.25,
            left: -size.width * 0.25,
            child: Container(
              width: size.width * 0.85,
              height: size.width * 1.3,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 80, 156, 155),
              ),
            ),
          ),

          // Main content
          Column(
            children: [
              const SizedBox(height: 50),

              // Back button
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {},
                ),
              ),

              const SizedBox(height: 10),

              // Title section
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Go ahead and set up\nyour account",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Sign up to enjoy the best managing experience",
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // White card with rounded top
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),

                      //Top Toggle Bar
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE8F0EE),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => setState(() => isLogin = true),
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: isLogin
                                          ? Colors.white
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: isLogin
                                          ? [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                  0.1,
                                                ),
                                                blurRadius: 8,
                                                offset: const Offset(0, 2),
                                              ),
                                            ]
                                          : [],
                                    ),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: isLogin
                                            ? const Color(0xFF0A7A6E)
                                            : Colors.black45,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => setState(() => isLogin = false),
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: !isLogin
                                          ? Colors.white
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: !isLogin
                                          ? [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                  0.1,
                                                ),
                                                blurRadius: 8,
                                                offset: const Offset(0, 2),
                                              ),
                                            ]
                                          : [],
                                    ),
                                    child: Text(
                                      "Register",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: !isLogin
                                            ? const Color(0xFF0A7A6E)
                                            : Colors.black45,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Column(
                            children: [
                              if (isLogin)
                                _buildLoginForm()
                              else
                                _buildRegisterForm(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String labelText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color.fromARGB(255, 202, 214, 210)),
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: Icon(icon, color: Colors.grey.shade600),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton({required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  //  Login Form
  Widget _buildLoginForm() {
    return Column(
      children: [
        const SizedBox(height: 20),
        _buildTextField(labelText: "E-mail ID", icon: Icons.email_outlined),
        const SizedBox(height: 16),
        _buildTextField(
          labelText: "Password",
          icon: Icons.lock_outline,
          obscureText: true,
        ),
        const SizedBox(height: 16),

        // Remember me and Forgot Password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, //IMPORTANT!!!
          children: [
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value ?? false;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: const Color(0xFF0A7A6E),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  "Remember me",
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF0A7A6E),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),
        ElevatedButton(
         onPressed: () {
                             Navigator.push( context,
                             MaterialPageRoute(builder: (context) => OTPVerificationScreen()),
                             );
                             },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0A7A6E),
            minimumSize: const Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 24),

        const Text(
          "Or login with",
          style: TextStyle(fontSize: 14, color: Colors.black54),
        ),

        const SizedBox(height: 16),

        // Social login buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialButton(icon: Icons.g_mobiledata, label: "Google"),
            const SizedBox(width: 16),
            _buildSocialButton(icon: Icons.apple, label: "Apple"),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  //  Register Form
 
  Widget _buildRegisterForm() {
    return Column(
      children: [
        const SizedBox(height: 20),
        _buildTextField(labelText: "Full Name", icon: Icons.person_outline),
        const SizedBox(height: 16),
        _buildTextField(labelText: "Email-ID", icon: Icons.email_outlined),
        const SizedBox(height: 16),
        _buildTextField(
          labelText: "Password",
          icon: Icons.lock_outline,
          obscureText: true,
        ),
        const SizedBox(height: 16),
        _buildTextField(labelText: "Phone No.", icon: Icons.phone_outlined),
        const SizedBox(height: 16),

        // User type dropdown
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(Icons.badge_outlined, color: Colors.grey.shade600),
              const SizedBox(width: 12),
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedUserType,
                    isExpanded: true,
                    items: ['user', 'provider'].map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedUserType = value ?? 'user';
                        // Reset service type and address when changing user type
                        if (value == 'user') {
                          selectedServiceType = '';
                        }
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),

        // Show service type and address only if provider is selected
        if (selectedUserType == 'provider') ...[
          const SizedBox(height: 16),

          // Service type dropdown
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(
                  Icons.miscellaneous_services_outlined,
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedServiceType.isEmpty
                          ? null
                          : selectedServiceType,
                      hint: Text(
                        'service type',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      isExpanded: true,
                      items: ['Service 1', 'Service 2', 'Service 3'].map((
                        String item,
                      ) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedServiceType = value ?? '';
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),
          _buildTextField(
            labelText: "Provider address",
            icon: Icons.location_on_outlined,
          ),
        ],
        const SizedBox(height: 20),
        ElevatedButton(
             onPressed: () {
                             Navigator.push( context,
                             MaterialPageRoute(builder: (context) => OTPVerificationScreen()),
                             );
                             },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0A7A6E),
            minimumSize: const Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            "Register",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

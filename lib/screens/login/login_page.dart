import 'package:flutter/material.dart';
import 'package:swift_cafe/screens/home/home_page.dart';
import 'package:swift_cafe/screens/login/glassmorphic_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/cofffee.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: GlassMorphism(
            cirRad: 20,
            height: size.height * 0.83,
            width: size.width * 0.83,
            start: 0.45,
            end: 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('asset/images/logo.png'),
                Image.asset('asset/images/swift cafe.png'),
                SizedBox(height: size.height * 0.02),
                const Text(
                  '"Latte but never late"',
                  style: TextStyle(
                    color: Color.fromRGBO(219, 219, 219, 0.8),
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: size.height * 0.005),
                SizedBox(
                  width: size.width * 0.66,
                  child: TextField(
                    cursorColor: const Color(0xFFFFFFFF).withOpacity(0.9),
                    style: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.9),
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xFFFFFFFF).withOpacity(0.5),
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(left: 8),
                      hintText: "User Name",
                      hintStyle: TextStyle(
                        color: const Color(0xFFFFFFFF).withOpacity(0.9),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.015),
                SizedBox(
                  width: size.width * 0.66,
                  child: TextField(
                    cursorColor: const Color(0xFFFFFFFF).withOpacity(0.9),
                    style: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.9),
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xFFFFFFFF).withOpacity(0.5),
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(left: 8),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: const Color(0xFFFFFFFF).withOpacity(0.9),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.07),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Container(
                    width: size.width * 0.6,
                    height: size.height * 0.06,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(77, 43, 26, 1),
                        Color.fromRGBO(167, 116, 90, 1),
                      ]),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 5,
                          spreadRadius: 1.8,
                          offset: const Offset(1, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: const Color(0xFFFFFFFF).withOpacity(0.9),
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  width: size.width * 0.6,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF).withOpacity(0.9),
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF).withOpacity(0.9),
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

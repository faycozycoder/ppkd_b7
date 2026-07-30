import 'package:flutter/material.dart';
import 'package:ppkd_b7/flutter6/homepage.dart';

class Fluttter6 extends StatelessWidget {
  const Fluttter6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 320,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      image: DecorationImage(
                        image: AssetImage("assets/image/gambar3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.30),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 70, 24, 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Welcome Back",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 32,
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            "Welcome back to Estero. Have a good time",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(0, -20),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF041F3A),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),

                        const TextField(
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          decoration: InputDecoration(
                            hintText: "Your Email/id",
                            hintStyle: TextStyle(
                              color: Colors.white54,
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: Colors.white54,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF1B354D),
                                width: 1,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 18),
                          ),
                        ),

                        const SizedBox(height: 25),

                        const TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          decoration: InputDecoration(
                            hintText: "Your Password",
                            hintStyle: TextStyle(
                              color: Colors.white54,
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.white54,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.white54,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF1B354D),
                                width: 1,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 18),
                          ),
                        ),

                        const SizedBox(height: 20),

                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password ?",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF062592),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 35),

                        Row(
                          children: const [
                            Expanded(
                              child: Divider(
                                color: Colors.white24,
                                thickness: 1,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                "or",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 14,
                                ),
                              ),
                            ),

                            Expanded(
                              child: Divider(
                                color: Colors.white24,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 35),

                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 48,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF1B344D),
                                    foregroundColor: Colors.white,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Facebook",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 15),

                            Expanded(
                              child: SizedBox(
                                height: 48,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF1B344D),
                                    foregroundColor: Colors.white,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Gmail",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

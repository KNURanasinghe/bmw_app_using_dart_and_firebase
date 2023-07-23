import 'package:flutter/material.dart';

import '../../Components/Custom Buttons/custom_button1.dart';
import '../../Components/Customtext/custompoppin_text.dart';
import '../../Components/custom_textfeild.dart';
import '../home/home_page.dart';
import 'forgotpassword_page.dart';
import 'signup_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.3,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: const NetworkImage(
                          "https://th.bing.com/th/id/R.0a32e58a6fb34f0d822dfca5dc4c0ebf?rik=8ex%2bGMogwJ0QdQ&pid=ImgRaw&r=0"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken)),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomPoppinsText(
                        text: "BMW Strore",
                        color: Colors.white,
                        fontsize: 30,
                      ),
                      CustomPoppinsText(
                        text: "Sign In To Your Account",
                        color: Colors.white,
                        fontsize: 18,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.26,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView(children: [
                      CustomTextField(
                        text: "Email",
                        prefix: Icons.email,
                        controller: _emailController,
                      ),
                      CustomTextField(
                        text: "Password",
                        prefix: Icons.key_outlined,
                        ispassword: true,
                        controller: _passswordController,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ForgotPassword(),
                                ));
                          },
                          child: CustomPoppinsText(
                            text: "Forgot Password?",
                            color: Colors.amber.shade800,
                            fontsize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButton1(
                          colors: [
                            Colors.amber.shade500,
                            Colors.amber.shade800
                          ],
                          size: size,
                          text: "Sign In",
                          ontap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                            CustomButton1(
                              colors: [
                                Colors.grey.shade500,
                                Colors.grey.shade800
                              ],
                              size: size,
                              text: "Create New Account",
                              ontap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpPage(),
                                  ),
                                );
                              },
                            );
                          })
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../Components/Custom Buttons/custom_button1.dart';
import '../../Components/Customtext/custompoppin_text.dart';
import '../../Components/custom_textfeild.dart';
import 'sigin.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passswordController = TextEditingController();
  final TextEditingController _conformpassswordController =
      TextEditingController();
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
                        text: "Create New User Account",
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
                    child: ListView(
                      children: [
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
                        CustomTextField(
                          text: "Conform Password",
                          prefix: Icons.key_outlined,
                          ispassword: true,
                          controller: _conformpassswordController,
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
                          text: "Create New Account",
                          ontap: () {},
                        ),
                        CustomButton1(
                          colors: [Colors.grey.shade500, Colors.grey.shade800],
                          size: size,
                          text: "Sign Up",
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInPage(),
                                ));
                          },
                        )
                      ],
                    ),
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

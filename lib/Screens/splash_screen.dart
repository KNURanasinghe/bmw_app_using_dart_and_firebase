import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Auth/sigin.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplState();
}

class _SplState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignInPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://th.bing.com/th/id/R.675f0be9ad2d13ca056ae3179536eb72?rik=%2fedzx0AL17APqw&riu=http%3a%2f%2fclipart-library.com%2fimage_gallery%2fn1933087.png&ehk=SK9hU29F%2b93WVIVPcGbamjCfCz%2fTE%2b86eBoXXApZ%2fE0%3d&risl=&pid=ImgRaw&r=0",
                    width: size.width * 0.5,
                    height: size.height * 0.5,
                  ),
                  Text(
                    "BMW Cars",
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CupertinoActivityIndicator(),
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:toko_sembako_online/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          (context),
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepOrange.shade700, Colors.orange.shade400],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/splash.json',
                width: 400,
                height: 400,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 30),
              Text(
                "SEMBAKO ONLINE",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: Colors.black45,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

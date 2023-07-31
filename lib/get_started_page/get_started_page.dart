import 'package:burger_order/in_app_pages/home_pages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 241, 39, 17),
              Color.fromARGB(255, 245, 175, 25),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.only(
                  left: 80.0,
                  right: 80.0,
                  top: 110,
                  bottom: 20,
                ),
                child: Image.asset(
                  'assets/images/burger_logo.png',
                ),
              ),
              // introduce text
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  'Lezzet Dolu Burgerler',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              const SizedBox(height: 24),

              const Spacer(),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 300),
                      pageBuilder: (_, __, ___) => const HomePage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        final tween = Tween(begin: begin, end: end);
                        final offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromARGB(255, 241, 39, 17),
                  ),
                  child: Text(
                    "BAŞLIYALIM",
                    style: GoogleFonts.notoSerif(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../components/sign_up_textfield.dart';
import '../login_page/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 255, 138, 120),
              Color.fromARGB(255, 255, 77, 113),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/burger_logo.png',
                    width: 220,
                    height: 220,
                    color: Colors.black,
                  ),
                  const Text(
                    'Hoşgeldiniz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const RegisterTextField(
                    hintText: 'Ad Soyad',
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    maxLength: 30,
                  ),
                  const SizedBox(height: 20),
                  const RegisterTextField(
                    hintText: 'Email',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    maxLength: 30,
                  ),
                  const SizedBox(height: 20),
                  const RegisterTextField(
                    hintText: 'Şifre',
                    obscureText: true,
                    maxLength: 30,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 20),
                  const RegisterTextField(
                    keyboardType: TextInputType.phone,
                    maxLength: 11,
                    hintText: 'Telefon',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 25),
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(horizontal: 35),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          'KAYIT OL',
                          style: TextStyle(
                            color: Color.fromARGB(255, 224, 61, 102),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hesabınız var mı?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => LoginPage()),
                            ),
                          );
                        },
                        child: const Text(
                          'Giriş Yap',
                          style: TextStyle(
                            color: Color.fromARGB(255, 68, 22, 80),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

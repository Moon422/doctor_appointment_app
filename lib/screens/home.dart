import 'dart:developer';

import 'package:doctor_appointment_app/screens/oobe.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff313131),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: const Image(
                image: AssetImage("lib/assets/doctor.png"),
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: Color(0xff858585),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(text: "Your "),
                        TextSpan(
                          text: "Ultimate Doctor\n",
                          style: TextStyle(
                            color: Color(0xff313131),
                          ),
                        ),
                        TextSpan(text: "Appointment Booking App"),
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Book appointments effortlessly and manage your health journey.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.white60),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xff313131),
                      ),
                      foregroundColor: MaterialStatePropertyAll(
                        Colors.white,
                      ),
                      textStyle: MaterialStatePropertyAll(
                        TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                      )),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) => const OobeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Let's Get Started",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    const TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "Sign in",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff313131),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

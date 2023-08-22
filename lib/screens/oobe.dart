import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OobeScreen extends StatefulWidget {
  const OobeScreen({super.key});

  @override
  State<OobeScreen> createState() => _OobeScreenState();
}

class Slide {
  final String slideImage;
  final List<TextSpan> slideTitleWidget;
  final String subtitle;

  Slide(
      {required this.slideImage,
      required this.slideTitleWidget,
      required this.subtitle});
}

class _OobeScreenState extends State<OobeScreen> {
  int slideIndex = 0;
  final slides = [
    Slide(
      slideImage: "lib/assets/number1.jpg",
      slideTitleWidget: [
        const TextSpan(
          text: "Discover ",
        ),
        TextSpan(
          style: GoogleFonts.inter(
            color: const Color(0xff858585),
          ),
          text: "Experienced\nDoctor",
        ),
      ],
      subtitle:
          "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
    ),
    Slide(
      slideImage: "lib/assets/number2.jpg",
      slideTitleWidget: [
        const TextSpan(
          text: "Effortless ",
        ),
        TextSpan(
          style: GoogleFonts.inter(
            color: const Color(0xff858585),
          ),
          text: "Appointment\n",
        ),
        const TextSpan(
          text: "Booking",
        ),
      ],
      subtitle:
      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
    ),
    Slide(
      slideImage: "lib/assets/number3.jpg",
      slideTitleWidget: [
        TextSpan(
          style: GoogleFonts.inter(
            color: const Color(0xff858585),
          ),
          text: "Learn About ",
        ),
        const TextSpan(
          text: "Your\nDoctors",
        ),
      ],
      subtitle:
      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final bottomControlHieght = MediaQuery.of(context).viewPadding.bottom;
    final screenHeight = MediaQuery.of(context).size.height -
        statusBarHeight -
        bottomControlHieght;

    return Scaffold(
      backgroundColor: const Color(0xff313131),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: statusBarHeight + 10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Image(
          //   alignment: Alignment.topCenter,
          //   image: AssetImage(slides[slideIndex].slideImage),
          // ),
          // const SizedBox(
          //   height: 40,
          // ),
          // RichText(
          //   textAlign: TextAlign.center,
          //   text: TextSpan(
          //     style: GoogleFonts.inter(
          //       fontSize: 25,
          //       color: Colors.white,
          //       fontWeight: FontWeight.w700,
          //     ),
          //     children: slides[slideIndex].slideTitleWidget,
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Text(
          //   slides[slideIndex].subtitle,
          //   textAlign: TextAlign.center,
          //   style: GoogleFonts.inter(
          //     color: Colors.white,
          //     fontSize: 14,
          //   ),
          // ),
          CarouselSlider(
            options: CarouselOptions(
              onScrolled: null,
            ),
            items: [
              Text("Page 1"),
              Text("Page 2"),
              Text("Page 3"),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                IconButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        slideIndex == 0
                            ? const Color(0xff858585).withOpacity(0.2)
                            : const Color(0xff858585),
                      ),
                      foregroundColor: MaterialStatePropertyAll(
                        slideIndex == 0
                            ? Colors.white.withOpacity(0.2)
                            : Colors.white,
                      )),
                  onPressed: slideIndex == 0
                      ? null
                      : () {
                          setState(() {
                            if (slideIndex > 0) {
                              slideIndex--;
                            }
                          });
                        },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                const Spacer(),
                // pagination
                const Spacer(),
                IconButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xff858585),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (slideIndex + 1 < slides.length) {
                        slideIndex++;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

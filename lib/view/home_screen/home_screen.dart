import 'package:engatti/view/broadcast_screen/broadcast_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B2C30),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Broadcast History',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: Get.height * 0.3),
              Center(
                child: Column(
                  children: [
                    SvgPicture.asset('assets/image.svg'),
                    const SizedBox(height: 10),
                    const Text(
                      'There are no Broadcast published for this Bot',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Click here ',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decorationThickness: 3,
                                  decorationColor: Color(0xff931934),
                                  color: Color(0xff931934),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const TextSpan(
                            text: ' to learn more about using Broadcasts',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.05),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Get.to(() => const BroadCastScreen());
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Create new Broadcast',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffAD1536),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
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

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_delivery/screens/order_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 230, 223),
      body: Column(children: [
        Stack(
          children: [
            Align(
              child: Container(
                width: double.infinity,
                height: 350,
                color: Colors.white,
              ),
            ),
            Container(
              width: double.infinity,
              height: 350,
              margin: const EdgeInsets.only(top: 55),
              child: Image.asset(
                "assets/images/chef.png",
                alignment: Alignment.center,
              ),
            ),
            Center(
              child: Container(
                height: 120,
                margin: const EdgeInsets.only(top: 380),
                child: Image.asset(
                  "assets/images/pizza1.png",
                ),
              ),
            ),
            Positioned(
              top: 53.9,
              right: 20.9,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Skip",
                  style: TextStyle(
                      fontFamily: "Sora",
                      fontWeight: FontWeight.w400,
                      fontSize: 17.5,
                      color: Colors.black54),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 500),
              child: Center(
                child: Column(
                  children: [
                    const Gap(5),
                    const Text(
                      'Pizza for you',
                      style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 15.0,
                          ),
                          child: Icon(
                            Icons.bolt,
                            color: Color.fromARGB(255, 246, 180, 76),
                          ),
                        ),
                        Text(
                          'Everyday new pizza \neat fresh pizza',
                          style: TextStyle(fontFamily: "Sora"),
                        )
                      ],
                    ),
                    const Gap(10),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 219, 189, 137),
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign up with Email',
                          style: TextStyle(
                            fontFamily: "Sora",
                            color: Color.fromARGB(199, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                    const Gap(20),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 162, 0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign up with Google',
                          style: TextStyle(
                            fontFamily: "Sora",
                            color: Color.fromARGB(199, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
